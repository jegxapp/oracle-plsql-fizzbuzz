DECLARE 
  
     FUNCTION xMOD (i NUMBER, m NUMBER, s VARCHAR2) RETURN VARCHAR2
              IS                                         
     BEGIN          
                      
           IF MOD(i,m)=0 THEN 
                  RETURN s;
           END IF;
              
          RETURN '';
     END;   
   
   PROCEDURE f (i NUMBER DEFAULT 1)
             IS 
   BEGIN 
             DBMS_OUTPUT.PUT_LINE(  COALESCE ( xmod(i,3,'Fizz') || xmod(i,5,'Buzz') ,to_char( i )) )  ;                                
             
             IF i < 100 THEN            
                         f(i+1);
             END IF;
   END;
BEGIN

   f();
  
END;
/
