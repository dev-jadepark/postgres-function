--월별 날짜 리스트 만들기
SELECT GENERATE_SERIES(DATE_TRUNC('MONTH', NOW())::DATE, (DATE_TRUNC('MONTH', NOW()) + INTERVAL '1 MONTH - 1 day')::DATE, '1 day'::INTERVAL)::DATE;

SELECT cast(date_trunc('month',current_date) as date) as firstday, (date_trunc('MONTH', current_date) + INTERVAL '1 MONTH - 1 day')::date lastday;

--해당 월의 첫째날
SELECT date_trunc('month',current_date)::DATE AS firstDay
--해당 월의 마지막날
SELECT (date_trunc('MONTH', current_date) + INTERVAL '1 MONTH - 1 day')::DATE AS lastDay;
