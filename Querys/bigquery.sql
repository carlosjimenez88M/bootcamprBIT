-- Seleccionando unas variables especificas 

select name,hp,attack,sp_defense,sp_attack ,type1
from robotic-augury-283918.pokemon.pokemon_completo

-- Haciendo algunas operaciones de estadística --

select type1 as Type,  
avg(attack) as Average,
min(attack) as MIN,
max(attack) as MAX
from robotic-augury-283918.pokemon.pokemon_clase
group by (Type)

-- Un pequeño filtro --
select type1 as Type, 
avg(attack) as Average,
min(attack) as MIN,
max(attack) as MAX
from robotic-augury-283918.pokemon.pokemon_clase
WHERE name!="Walrein"
group by (Type)


-- Ordenando la tabla --

select type1 as Type, 
avg(attack) as Average,
min(attack) as MIN,
max(attack) as MAX
from robotic-augury-283918.pokemon.pokemon_clase
WHERE name!="Walrein"
group by (Type)
order by (-Average)


-- Haciendo un conteo con la table ---
select type1, count(*) as COUNT
from robotic-augury-283918.pokemon.pokemon_clase
group by (type1)
order by (-COUNT)

-- haciendo un cruce de bases de datos --
select * 
from robotic-augury-283918.pokemon.pokemon_clase  AS B1
left join robotic-augury-283918.pokemon.pokemon_tabla2 as B2
ON B1.name=B2.name



--- Base de datos house price ---
SELECT sqft_lot,waterfront,sqft_above,sqft_basement,city,
    DATE(date) as date, 
    CAST(price as INT64) as price, 
    CAST(bedrooms as INT64) as bedrroms,
    CAST(sqft_living as INT64) as sqft_living,
    CAST(floors as INT64) as floors,
 from bit01-306604.bases_de_prueba.house_price
 
## Clase aplicada y toque deep 


SELECT * EXCEPT (customerID,Partner,SeniorCitizen,Dependents,MonthlyCharges,Churn),
    CASE
    WHEN Partner=true THEN 'SI ES AFILIADO'
    WHEN Partner=false THEN 'NO ES AFILIADO'
    WHEN Partner is NULL then NULL
    else 'Other' END as Partner,
    CASE 
    WHEN SeniorCitizen =1 THEN "Pensionado"
    WHEN SeniorCitizen =0 THEN "No Pensionado"
    WHEN SeniorCitizen is null  then null
    else 'Other' end as SeniorCitizen ,
    CASE
    when Dependents= true then 'Si'
    when Dependents= false then 'No'
    when  Dependents is null then null
    else 'Other' end as Dependents,
    CAST(MonthlyCharges as INT64) as MonthlyCharges,
    CASE
    WHEN Churn = false then 'No'
    WHEN Churn = true then 'Si'
    WHEN churn is null then null
    else 'Other'END as Churn ,
    FROM bit01-306604.bases_de_prueba.otro_ejercicio_churn∫