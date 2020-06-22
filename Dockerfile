FROM brsynth/rpcache

COPY rpToolCache.py /home/
RUN python rpToolCache.py

#RUN wget https://raw.githubusercontent.com/Galaxy-SynBioCAD/rpUnicity/standalone/code/rpUnicity.py .
RUN git clone https://github.com/Galaxy-SynBioCAD/rpUnicity.git -b rest-dev
RUN mv rpUnicity/code/tool_rpUnicity.py .
RUN rm -r rpUnicity
COPY rpTool.py /home/
COPY rpToolServe.py /home/
COPY galaxy/tool_rpCofactors.py /home/
