ALTER TABLE `isu_condition`
ADD `level` VARCHAR(10) GENERATED ALWAYS AS (
    CASE 
      WHEN INSTR(`condition`, '=true') = 0 THEN 'info'
      WHEN INSTR(`condition`, '=false') = 0 THEN 'critical'
      ELSE 'warning'
    END
) STORED;