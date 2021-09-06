$request = 'http://musicbrainz.org/ws/2/recording/fcbcdc39-8851-4efc-a02a-ab0e13be224f?inc=artist-credits+isrcs+releases&fmt=json'
# 'http://musicbrainz.org/ws/2/recording/fcbcdc39-8851-4efc-a02a-ab0e13be224f?inc=artist-credits+isrcs+releases&fmt=json'
# 'http://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=aliases&fmt=json'
# Invoke-WebRequest $request Content
 Invoke-WebRequest $request   | Select StatusCode, RawContent
 # |
 # ConvertFrom-Json   |
# Select name, disambiguation, country
#  Select id, title, video, artist-credit, disambiguation, first-release-date

