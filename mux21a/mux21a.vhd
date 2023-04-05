ENTITY mux21a IS
  PORT ( a, b, s: IN  BIT; 
              y : OUT BIT  );
END ENTITY mux21a;
ARCHITECTURE one OF mux21a IS
 BEGIN
   PROCESS (a,b,s) 
BEGIN
     IF s = '0'  THEN   y <= a ;  ELSE  y <= b ;
END IF;
   END PROCESS;
END ARCHITECTURE one ; 
