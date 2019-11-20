-- SQL DML : Data Manipulation Language : SELECT, INSERT, UPDATE, DELETE
select * from champignon;
select nom, comestible from champignon where comestible = 'Toxique';
select * from champignon where nom like 'CEPE%';
select * from champignon where nom SIMILAR TO '%LL[EY]%';
select * from champignon where nom ~* '.*ll[ey].*';
select * from champignon where id=10;
select * from champignon where taux is null;
select * from champignon where taux is not null;

select 
	c.*,
	--nom, comestible, 
	CASE 
		WHEN taux is null then 0
		WHEN comestible ~* '.*comestible' then taux 
		else 0 END as taux_ajuste
from champignon c;

select 
	comestible, 
	count(*) as nb,
	count(taux) as nb2,
	count(distinct taux) as nb3,
	sum(taux) as taux_total,
	string_agg(nom,', ')
from champignon
where taux is not null
group by comestible;

update champignon set taux=0.4 where nom ~* '.*ll[ey].*';


select f.titre, i.nom, i.prenom, j.role
from 
	jouer j
	join individu i on j.num_act = i.num_ind 
	join film f on j.num_film = f.num_film;
	
select * from individu where nom = 'McQueen';

-- nb de films réalisés par personne
select i.*, count(f.num_film) as nb_real
from individu i left join film f on i.num_ind = f.num_real
group by i.num_ind
order by i.nom;
-- nb de films joués par personne
select i.*, count(j.num_film) as nb_act
from individu i left join jouer j on i.num_ind = j.num_act
group by i.num_ind
order by i.nom;
-- les 2 ensembles
select i.*, count(distinct f.num_film) as nb_real, count(distinct j.num_film) as nb_act
from 
	individu i left join film f on i.num_ind = f.num_real
	left join jouer j on i.num_ind = j.num_act
group by i.num_ind
order by i.nom;

select * from individu where num_ind in (select num_real from film)


-- 1 peu d'admin
-- version Postgresql
select version();
select * from pg_indexes where schemaname = 'champi';
alter user champi set search_path = champi,cinema;
set search_path = champi,cinema;

show search_path
