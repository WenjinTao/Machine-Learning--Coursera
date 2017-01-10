1. In the exercies/lib folder, edit and save the file submitWithConfiguration.m, changing line 66 from this:

   > responseBody = urlread(submissionUrl, 'post', params)

   to this:

   > [code, responseBody] = system(sprintf('echo jsonBody=%s | curl -k -X POST -d @- %s', body, submissionUrl));

2. Then restart Octave.
   ​