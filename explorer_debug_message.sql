-- Matt Mulvaney (Explorer) : 08-Aug-2019 : Wrapper procedure to apex_debug.message using default level 3 debugging and optional prefix : version 19.1
CREATE OR REPLACE PROCEDURE explorer_debug_message( 
      p_message       IN VARCHAR2, 
      p0              IN VARCHAR2 DEFAULT NULL, 
      p1              IN VARCHAR2 DEFAULT NULL, 
      p2              IN VARCHAR2 DEFAULT NULL, 
      p3              IN VARCHAR2 DEFAULT NULL, 
      p4              IN VARCHAR2 DEFAULT NULL, 
      p5              IN VARCHAR2 DEFAULT NULL, 
      p6              IN VARCHAR2 DEFAULT NULL, 
      p7              IN VARCHAR2 DEFAULT NULL, 
      p8              IN VARCHAR2 DEFAULT NULL, 
      p9              IN VARCHAR2 DEFAULT NULL, 
      p10             IN VARCHAR2 DEFAULT NULL, 
      p11             IN VARCHAR2 DEFAULT NULL, 
      p12             IN VARCHAR2 DEFAULT NULL, 
      p13             IN VARCHAR2 DEFAULT NULL, 
      p14             IN VARCHAR2 DEFAULT NULL, 
      p15             IN VARCHAR2 DEFAULT NULL, 
      p16             IN VARCHAR2 DEFAULT NULL, 
      p17             IN VARCHAR2 DEFAULT NULL, 
      p18             IN VARCHAR2 DEFAULT NULL, 
      p19             IN VARCHAR2 DEFAULT NULL, 
      p_max_length    IN PLS_INTEGER DEFAULT 1000, 
      p_level         IN apex_debug.t_log_level DEFAULT 3, 
      p_force         IN BOOLEAN DEFAULT FALSE )
    IS
        -- Constants
        lv_prefix_c CONSTANT VARCHAR2(8) DEFAULT NULL; -- '!'; /* Example Prefix Debugging Method */
    BEGIN
        apex_debug.message ( 
            p_message => lv_prefix_c || p_message,
            p0 =>  p0,
            p1 =>  p1,
            p2 =>  p2,
            p3 =>  p3,
            p4 =>  p4,
            p5 =>  p5,
            p6 =>  p6,
            p7 =>  p7,
            p8 =>  p8,
            p9 =>  p9,
            p10 => p10,
            p11 => p11,
            p12 => p12,
            p13 => p13,
            p14 => p14,
            p15 => p15,
            p16 => p16,
            p17 => p17,
            p18 => p18,
            p19 => p19,
            p_max_length => p_max_length,
            p_level => p_level,
            p_force => p_force );        
    END explorer_debug_message;
/