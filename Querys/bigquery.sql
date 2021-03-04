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