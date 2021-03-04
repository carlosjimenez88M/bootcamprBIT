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
