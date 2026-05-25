-- Trigger to log student updates
CREATE TRIGGER log_student_update
AFTER UPDATE ON students
FOR EACH ROW
BEGIN
    INSERT INTO operation_requests (operation_type, table_name, record_id, status)
    VALUES ('UPDATE', 'students', OLD.student_id, 'PENDING');
END;
