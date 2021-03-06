#' @name led
#' @title Efeito das Cores de Ilumina\enc{çã}{ca}o de LED na Produ\enc{çã}{ca}o de Poedeiras
#' @description Experimento que estudou o efeito de 5 cores de
#'     iluminação de LED na produção de ovos de galinha poedeira. O
#'     experimento usou 360 aves divididas em 36 gaiolas e teve duração
#'     de 5 períodos de 14 dias cada. Foi empragado o delineamento
#'     quadrado latino de tamanho 5 períodos por 5 repartições. Em cada
#'     repartição haviam 6 gaiolas com 10 aves. Os ovos eram coletados
#'     diariamente de cada gaiola.
#' @format Um \code{data.frame} com 2100 observações e 6 variáveis.
#'
#' \describe{
#'
#' \item{\code{period}}{Período de condução do experimento que teve uma
#'     duração de 5 períodos de 14 dias. A cada 14 dias, a iluminação
#'     era trocada de repartição. Os níveis desse fator são as linhas do
#'     quadrado latino.}
#'
#' \item{\code{repart}}{Fator de níveis categóricos que representa as
#'     repartições do galpão. Cada repartição isolava 6 gaiolas para
#'     receberem apenas a iluminação de uma cor. Os níveis desse fator
#'     são as colunas do quadrado latino.}
#'
#' \item{\code{corled}}{Fator de níveis categóricos cujos níveis são as
#'     cores emitida pela luz de LED: amr - amarelo, azl - azul, brn -
#'     branco, vrd - verde e vrm - vermelho. Esse fator é aplicado à
#'     todas as gaiolas de uma mesma repartição em um período.}
#'
#' \item{\code{gaiola}}{A gaiola é a unidade amostral do experimento. Em
#'     cada gaiola haviam 10 aves e as variáveis resposta foram medidas
#'     nas gaiolas.}
#'
#' \item{\code{dia}}{Número de dias após a troca da iluminação da
#'     repartição. A repartição permaneceu em cada cor de LED por 14
#'     dias.}
#'
#' \item{\code{ovos}}{Número de ovos produzidos por dia em cada gaiola.}
#'
#' }
#' @source Dados referentes ao Capítulo 2 da Dissertação de Mestrado de
#'     Rodrigo Borille.
#'
#' Rodrigo, B. (2013). LED de diferentes cores como alternativa
#' sustentável para a iluminação de poedeiras comerciais. Dissertação
#' (Mestrado em Zootecnia). Universidade Federal da Grande Dourados,
#' Dourados: MS. \url{http://200.129.209.183/arquivos/arquivos/78/MESTRADO-ZOOTECNIA/Dissertação Rodrigo Borille .pdf}
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' data(led)
#' str(led)
#'
#' ftable(xtabs(~period + corled + repart, data = led))
#'
#' useOuterStrips(
#'     xyplot(ovos ~ dia | repart + period,
#'            data = led, groups = corled,
#'            col = c("yellow", "blue", "gray30", "green", "red"),
#'            type = c("p", "smooth"), jitter.x = TRUE, as.table = TRUE,
#'            xlab = "Dias",
#'            ylab = "Número de ovos produzidos"))
#'
#' useOuterStrips(histogram(~ovos | repart + period, data = led,
#'                          groups = corled, as.table = TRUE,
#'                          breaks = seq(min(led$ovos) - 0.5,
#'                                       max(led$ovos) + 0.5, by = 1),
#'                          xlab = "Número de ovos produzidos",
#'                          ylab = "Frequência relativa (%)"))
#'
#' xyplot(ovos ~ corled | period, data = led,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        ylab = "Número de ovos produzidos",
#'        xlab = "Cor emitida pelo LED")
#'
NULL
