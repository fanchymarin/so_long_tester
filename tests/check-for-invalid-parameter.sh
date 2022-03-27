#!/bin/bash

#
#
#                                                        :::      ::::::::
#   SoLongTester/check-for-invalid-parameter.sh         :+:      :+:    :+:
#                                                    +:+ +:+         +:+
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+
#                                                +#+#+#+#+#+   +#+
#   Created: 2021/03/15 14:35:10 by acesar-l          #+#    #+#
#   Updated: 2021/03/15 19:31:41 by acesar-l         ###   ########.fr
#
#

	  GREEN="\033[0;32m"
  		RED="\033[0;31m"
	  RESET="\033[0m"
  		MAP="../maps/invalid/map-extra-parameter.ber"
	  ERROR=$(./../../so_long $MAP | grep "Error" | wc -l)

if [ ${ERROR} -ge 1 ]
then
	echo -e "Check extra parameter: $GREEN         [OK] $RESET"
else
	echo -e "Check extra parameter: $RED         [KO] $RESET"
fi
