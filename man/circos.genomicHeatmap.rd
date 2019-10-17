\name{circos.genomicHeatmap}
\alias{circos.genomicHeatmap}
\title{
Add heatmaps for selected regions
}
\description{
Add heatmaps for selected regions
}
\usage{
circos.genomicHeatmap(bed, col, na_col = "grey",
    numeric.column = NULL, border = NA, border_lwd = par("lwd"),
    border_lty = par("lty"), connection_height = convert_height(5, "mm"),
    line_col = par("col"), line_lwd = par("lwd"), line_lty = par("lty"),
    heatmap_height = 0.15, side = c("inside", "outside"),
    track.margin = circos.par("track.margin"))
}
\arguments{

  \item{bed}{a data frame in bed format, the matrix is stored from the fourth column.}
  \item{col}{colors for the heatmaps. The value can be a matrix or a color mapping function generated by \code{\link{colorRamp2}}.}
  \item{na_col}{color for NA values.}
  \item{numeric.column}{column index for the numeric columns. The values can be integer index or character index}
  \item{border}{border of the heatmap grids.}
  \item{border_lwd}{line width for borders of heatmap grids}
  \item{border_lty}{line style for borders of heatmap grids}
  \item{connection_height}{height of the connection lines}
  \item{line_col}{col of the connection line. The value can be a vector.}
  \item{line_lwd}{line width of the connection lines.}
  \item{line_lty}{line style of the connection lines.}
  \item{heatmap_height}{height of the heatmap track}
  \item{side}{side of the heatmaps. Is the heatmap facing inside or outside?}
  \item{track.margin}{bottom and top margins}

}
\details{
The function visualizes heatmaps which correspond to a subset of regions in the genome.
The correspondance between heatmaps and regions are identified by connection lines.

The function actually creates two tracks, one track for the connection lines and one track
for the heamtaps. The heatmaps always fill the whole track.
}
\seealso{
\url{https://jokergoo.github.io/circlize_book/book/high-level-genomic-functions.html#genomic-heatmap}
}
\examples{
circos.initializeWithIdeogram(plotType = c("labels", "axis"))
bed = generateRandomBed(nr = 100, nc = 4)
col_fun = colorRamp2(c(-1, 0, 1), c("green", "black", "red"))
circos.genomicHeatmap(bed, col_fun, side = "inside", border = "white")
circos.genomicHeatmap(bed, col_fun, side = "outside", 
    line_col = as.numeric(factor(bed[[1]])))
}
