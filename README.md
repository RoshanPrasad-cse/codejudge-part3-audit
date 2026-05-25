# Audit Trail Implementation

This module implements a database trigger to maintain an audit trail for the `students` table. 

- **Trigger Logic**: The `log_student_update` trigger automatically captures any UPDATE operations performed on the `students` table.
- **Audit Table**: Captured logs are inserted into the `operation_requests` table with a 'PENDING' status, ensuring all modifications are traceable for administrative review.
