select
   d.Cliente,
   d.nombrecli,
   d.direcli,
   d.telecli,
   d.nit,
   d.nrc,
   d.tipocontri,
   d.limitecredito,
   d.departamento,
   m.nombre_muni,
   s.nombre_depto,
   dd.Nombre_Distrito,
   d.giro,
   d.codgiro
from
   clientes as d
inner join
   cat_deptosg as s
   on d.departamento = s.codigo_depto 
inner join
   cat_municipio as m
   on d.municipio = m.codigo_muni 
inner join Cat_Distrito as dd
   on d.Codigo_Distrito = dd.Codigo_Distrito
where
   m.codigo_depto = s.codigo_depto;