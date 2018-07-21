```sql
# Lookup Redshift Errors
select * from stl_load_errors

# Export Database
pg_dump JPECOTT -h jpecott.db.amazon.com -p 8200 --username justin --password > jpecott.sql

# Import Database
psql -h jpecott.cqanpr9dsehl.us-west-2.rds.amazonaws.com -p 8200 --username justin --password -d JPECOTT -f jpecott.sql

# Database Sizes
select d.datname as name,
       pg_catalog.pg_get_userbyid(d.datdba) as owner,
       case
           when pg_catalog.has_database_privilege(d.datname, 'CONNECT') then pg_catalog.pg_size_pretty(pg_catalog.pg_database_size(d.datname))
           else 'No Access'
       end as size
from pg_catalog.pg_database d
order by case
             when pg_catalog.has_database_privilege(d.datname, 'CONNECT') then pg_catalog.pg_database_size(d.datname)
             else null
         end desc -- nulls first
limit 20
```