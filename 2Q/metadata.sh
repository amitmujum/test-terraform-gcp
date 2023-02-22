#!/bin/bash
instance_metadata=`curl "http://metadata.google.internal/computeMetadata/v1/instance/" -H "Metadata-Flavor: Google"`
for i in $instance_metadata; do
        if [[ "$i" == */  ]];
        then
            echo -e "----------------------------------------------\n"
            echo -e "          Metadata name: $i"
            echo -e "----------------------------------------------\n"
            curl "http://metadata.google.internal/computeMetadata/v1/instance/$i?recursive=true" -H "Metadata-Flavor: Google"
            echo -e "\n"
            echo -e "----------------------------------------------\n"
        else
            echo -e "----------------------------------------------\n"
            echo -e "          Metadata name: $i"
            echo -e "----------------------------------------------\n"
            curl "http://metadata.google.internal/computeMetadata/v1/instance/$i?alt=json" -H "Metadata-Flavor: Google"
            echo -e "\n"
            echo -e "----------------------------------------------\n"
        fi
done
