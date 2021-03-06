-- case ~ end

select job_id from jobs;

-- AC_ACCOUNT	=> salary + salary * 0.5
-- AC_MGR		=> salary + salary * 0.3
-- AD_VP		=> salary + salary * 0.2

select employee_id,
		salary,
		job_id,
		CASE job_id
		WHEN 'AC_ACCOUNT' THEN salary + salary * 0.5
		WHEN 'AC_MGR' THEN salary + salary * 0.3
		WHEN 'AD_VP' THEN salary + salary * 0.2
		ELSE salary
		END as "이번달 월급"
	from employees;

-- decode : 위의 case ~ end문을 decode함수로 대표현할 수 있음
select employee_id,
		salary,
		job_id,
		decode( job_id,
				'AC_ACCOUNT', salary + salary * 0.5,
				'AC_MGR', salary + salary * 0.3,
				'AD_VP', salary + salary * 0.2,
				salary ) as "이번달 월급"
	from employees;
