`include "module1.v"
`include "module2.v"

//val, i1, i2

module mod3(input [31:0] num,
            input [4:0] index1,
            input [4:0] index2);

        reg status;
        reg [4:0] curr_index;
        curr_index = index1;
        reg [4:0] next_index;
        reg [31:0] curr;
        mod1 m1;
        module2 m2;

        status = 1;
          
        always @(status) begin
            
            for(integer i = 0; i < 40; i+=1) begin
                if(val)
            end

            if(m1.table1_filled[curr_index] == 0) begin
                m1.table1_filled[curr_index] = 1;
                m1.table1[curr_index] = val;
            end
            else if(status == 1) begin
                for(integer j = 0; j<40; i+=1) begin
                    if(m2.i1[j] == curr_index) begin
                        curr = m2.val[j];
                        next_index = m2.i2[j];
                        m2.val[j] = num;
                        m2.
                    end
                end
                status = ~status;
            end
        end
    
    
endmodule