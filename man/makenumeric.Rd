% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makenumeric.R
\name{makenumeric}
\alias{makenumeric}
\title{Convert Column to Numeric with Optional Custom Mapping}
\usage{
makenumeric(
  data,
  column,
  true_values = NULL,
  true_number = 1,
  false_value = NULL,
  na_value = NA
)
}
\arguments{
\item{data}{A data frame or tibble containing the dataset.}

\item{column}{A character string specifying the column name to be converted.}

\item{true_values}{A vector of character values to be replaced with \code{true_number}. Default is \code{NULL}.}

\item{true_number}{The numeric value corresponding to \code{true_values}. Default is \code{1}.}

\item{false_value}{The numeric value for values not in \code{true_values}. Default is \code{NULL} (no change).}

\item{na_value}{The numeric value to replace \code{NA} values. Default is \code{NA}.}
}
\value{
A data frame with the specified column converted to numeric values.
}
\description{
This function converts a specified column in a dataset to numeric, with optional mappings for "true," "false," and \code{NA} values.
}
\examples{
# Example 1: Basic true/false conversion
data <- data.frame(
  response = c("Yes", "No", "Yes", NA)
)
makenumeric(data, "response",
            true_values = "Yes",
            false_value = 0)

# Example 2: Multiple true values
survey <- data.frame(
  satisfaction = c("Very Satisfied", "Satisfied", "Neutral", NA)
)
makenumeric(survey, "satisfaction",
            true_values = c("Very Satisfied", "Satisfied"),
            true_number = 1,
            false_value = 0,
            na_value = -99)

# Example 3: Converting living situation
household <- data.frame(
  spouse = c("Living with spouse", "Not living with spouse", NA)
)
makenumeric(household, "spouse",
            true_values = "Living with spouse",
            false_value = 0,
            na_value = -1)
}
