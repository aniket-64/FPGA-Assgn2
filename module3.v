`include "module1.v"
`include "module2.v"

//val, i1, i2

module mod3(input [31:0] num,
            input [4:0] index1,
            input [4:0] index2
            );

        reg status;
        reg [4:0] curr_index;
        curr_index = index1;
        //reg [4:0] next_index;
        reg [31:0] curr;
        reg [31:0] in_num;
        in_num = num;

        mod1 m1();
        module2 m2();
        
        status = 1;
          
        always @(status) begin
            
            
            if(m1.table1_filled[curr_index] == 0 && status == 1) begin
                m1.table1_filled[curr_index] = 1;
                m1.table1[curr_index] = in_num;
            end
            else if(m1.table2_filled[curr_index] == 0 && status == 0) begin
                m1.table2_filled[curr_index] = 1;
                m1.table2[curr_index] = in_num;
            end
            else if(status == 1) begin
                for(integer j = 0; j<40 && m2.cp[j] == 1; j+=1) begin
                    if(m2.i1[j] == curr_index) begin
                        curr = m2.val[j];
                        curr_index = m2.i2[j];
                        m2.val[j] = in_num;
                        in_num = curr;
                    end
                end
                status = ~status;
            end
            else begin
                for(integer j = 0; j<40 && m2.cp[j] == 1; j+=1) begin
                    if(m2.i2[j] == curr_index) begin
                        curr = m2.val[j];
                        curr_index = m2.i1[j];
                        m2.val[j] = in_num;
                        in_num = curr;
                    end
                end
                status = ~status;
            end

            integer i = 0;
                for(; i < 40 && m2.cp[i] == 1; i+=1) begin
                    ;
                end
                m2.cp[i] = 1;
                m2.val[i] = num;
                m2.i1[i] = index1;
                m2.i2[i] = index2;   
        end
    
    
endmodule