begin;

DO $$
 DECLARE
     i INT := 1;
 BEGIN
     WHILE i <= 65536 LOOP
         insert into t values (i, 'i');
         i := i + 1;
     END LOOP;
 END $$;

commit;
