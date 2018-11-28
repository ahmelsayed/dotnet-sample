FROM microsoft/dotnet:2.1-sdk

COPY . /dotnet-stample

RUN cd dotnet-stample && \
    dotnet publish src/sample.csproj -o /my-app

CMD dotnet /my-app/sample.dll