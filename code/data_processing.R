library(readr)

hh_2018 <- read_delim(
  "data/engho2018_hogares.txt",
  delim = "|",
  col_names = FALSE,
  locale = locale(encoding = "Latin1")
)

colnames(hogares_2018) <- strsplit(
  "id.provincia.region.subregion.trimestre.anio.pondera.cv1c04.cv1c05_a.cv1c05_b.cv1c05_c.cv1c05_d.cv1c06_e.cv1c06_f.cv1c07.cv1c08.cv1c09.cv1c10.cv1c11.cv1c12.cv1c13.ch01.ch02.ch03.ch04.ch05.ch06.ch07.ch08.ch09.ch10.ch11.ch12.ch13.ch14.ch15.ch16.ch17_a.ch17_b.ch18.ch19.ch20.ch21.propauto.regten.hacina.jniveled.jsexo.jedad_agrup.jsitconyugal.jdif_lp.jestado.jocupengh.jpercept.jcomed.tipohog.cantping.reldep.cantmiem.cantadequi.menor18.menor14.mayor65.dif_lph.cant_act.permieoc.clima_educativo.gastot.gastotpc.gasto_comunh.gascomp.gasvent.gc_01.gc_02.gc_03.gc_04.gc_05.gc_06.gc_07.gc_08.gc_09.gc_10.gc_11.gc_12.gc09_01.gc09_02.gc09_03.gc09_04.gc09_05.gc09_06.gc09_07.gc09_08.gc09_09.fp_contado.fp_credito.fp_especie.fp_prodprop.fp_tarjetas.fp_otras.fp_indef.tn_hipsup.tn_autoserv.tn_negesp.tn_restaurant.tn_kiosco.tn_internet.tn_comedor.tn_especie.tn_otros.tn_indef.decgaphp.decgaphr.decgapht.quigaphp.quigaphr.quigapht.gasto_imputado.m_gasto_imputado.ingtoth.ingpch.m_ingtoth.ingtoth_imp.qinth_p.qinth_r.qinth_t.dinth_p.dinth_r.dinth_t.qinpch_p.qinpch_r.qinpch_t.dinpch_p.dinpch_r.dinpch_t",
  "\\."
)[[1]]

# Count of missing values in each column
colSums(is.na(hh_2018))

codes <- read_delim(
  "data/engho2018_articulos.txt",
  delim = "|",
  locale = locale(encoding = "Latin1")
)

equipment <- read_delim(
  "data/engho2018_articulos_equipamiento.txt",
  delim = "|",
  locale = locale(encoding = "Latin1")
)