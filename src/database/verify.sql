SELECT 
    current_database() AS database_name,
    current_user AS user_name,
    now() AS current_time,
    pg_is_in_recovery() AS is_in_recovery,
    pg_postmaster_start_time() AS db_start_time;