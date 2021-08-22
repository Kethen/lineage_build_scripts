#!/bin/bash
set -x
checkout_project () {
	(
		if [ -d "$1" ]
		then
			cd "$1"
			git checkout .
		fi
	)
}
for f in *
do
	checkout_project "$f/prebuilts/prebuiltapks"
	checkout_project "$f/prebuilts/eapks"
	checkout_project "$f/packages/apps/Dialer"
	checkout_project "$f/lineage-sdk"
done
