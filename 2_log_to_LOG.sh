#!/bin/bash
find . -type f -name '*.log' | grep -v .do-not-touch | while read fname;
do echo mv ${fname/. log/. LOG/};
done | bash -x