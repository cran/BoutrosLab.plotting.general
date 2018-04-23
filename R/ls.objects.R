# The BoutrosLab.utilities package is copyright (c) 2012 Ontario Institute for Cancer Research (OICR)
# This package and its accompanying libraries is free software; you can redistribute it and/or modify it under the terms of the GPL
# (either version 1, or at your option, any later version) or the Artistic License 2.0.  Refer to LICENSE for the full license text.
# OICR makes no representations whatsoever as to the SOFTWARE contained herein.  It is experimental in nature and is provided WITHOUT
# WARRANTY OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE OR ANY OTHER WARRANTY, EXPRESS OR IMPLIED. OICR MAKES NO REPRESENTATION
# OR WARRANTY THAT THE USE OF THIS SOFTWARE WILL NOT INFRINGE ANY PATENT OR OTHER PROPRIETARY RIGHT.
# By downloading this SOFTWARE, your Institution hereby indemnifies OICR against any loss, claim, damage or liability, of whatsoever kind or
# nature, which may arise from your Institution's respective use, handling or storage of the SOFTWARE.
# If publications result from research using this SOFTWARE, we ask that the Ontario Institute for Cancer Research be acknowledged and/or
# credit be given to OICR scientists, as scientifically appropriate.

ls.objects <- function (pos = 1, order.by, decreasing = TRUE, n = 10) {

	# function to retrieve object info
	napply <- function(ls.names, fn) {
		sapply(ls.names, function(x) { fn(get(x, pos = pos)) } );
		}

	# retrieve object names	
	ls.names <- ls(pos = pos);

	# retrieve object class
	obj.class <- napply(ls.names, function(x) { as.character(class(x))[1] });

	# retrieve object mode
	obj.mode  <- napply(ls.names, mode);

	# retrieve object type
	obj.type  <- ifelse(is.na(obj.class), obj.mode, obj.class);

	#  make object sizes in a pretty readable format
	obj.prettysize <- napply(ls.names, function(x) { capture.output(print(object.size(x), units = 'auto')) });

	# retrieve object sizes
	obj.size <- napply(ls.names, object.size);

	# retrieve object dimensions
	obj.dim <- t(napply(ls.names, function(x) { as.numeric(dim(x))[1:2] } ));

	# check that there are objects to return
	if (length(obj.dim) > 0) {

		vec <- is.na(obj.dim)[, 1] & (obj.type != 'function');
		obj.dim[vec, 1] <- napply(ls.names, length)[vec];
	
		# combine all the object information
		ls.results <- data.frame(obj.type, obj.size, obj.prettysize, obj.dim);
		names(ls.results) <- c('Type', 'Size', 'PrettySize', 'Rows', 'Columns');
	
		# order objects if specified
		if (!missing(order.by)) {
			ls.results <- ls.results[order(ls.results[[order.by]], decreasing = decreasing), ];
			}
	
		return(head(ls.results, n));
		} 
	else {
		return('Nothing to list');
		}
	}


