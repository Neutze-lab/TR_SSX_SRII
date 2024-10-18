% %% This will extract info from a single .txt-file of your choosing
close all
clear all
SpectrumStart = 232;
SpectrumEnd = 915;
%% 7 ms data first run
for kk=1:55
if kk <= 9
file = ['Sample_3/7 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/7 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(2:20,SpectrumStart:SpectrumEnd),'percentiles',[3 100]);
SampleB = rmoutliers(sample(21:55,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs7ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
ReferenceEarly = mean(ReferenceB(:,:),1);
%% 7 ms data second run
for kk=1:52
if kk <= 9
file = ['Sample_3/7 ms B/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/7 ms B/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:21,SpectrumStart:SpectrumEnd),'percentiles',[3 100]);
SampleB = rmoutliers(sample(22:50,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs7msB = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 10 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/10 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/10 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[5 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs10ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 15 ms data second run
for kk=1:46
if kk <= 9
file = ['Sample_3/15 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/15 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs15ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 20 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/20 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/20 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs20ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 30 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/30 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/30 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs30ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 45 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/45 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/45 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs45ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 60 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/60 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/60 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs60ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 90 ms data second run
for kk=1:46
if kk <= 9
file = ['Sample_3/90 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/90 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs90ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 120 ms data second run
for kk=1:46
if kk <= 9
file = ['Sample_3/120 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/120 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs120ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 150 ms data second run
for kk=1:46
if kk <= 9
file = ['Sample_3/150 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/150 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs150ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 200 ms data second run
for kk=1:48
if kk <= 9
file = ['Sample_3/200 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/200 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:16,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
SampleB = rmoutliers(sample(17:45,SpectrumStart:SpectrumEnd),'percentiles',[4 99]);
Abs200ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 300 ms data second run
for kk=1:50
if kk <= 9
file = ['Sample_3/300 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/300 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:16,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(17:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs300ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 400 ms data second run
for kk=1:48
if kk <= 9
file = ['Sample_3/400 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/400 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(13:15,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs400ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 500 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/500 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/500 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(13:17,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(18:43,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs500ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%% 600 ms data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/600 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/600 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:18,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(22:45,SpectrumStart:SpectrumEnd),'percentiles',[5 98]);
Abs600ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)))-0.005;
%% 900 ms data second run
for kk=1:90
if kk <= 9
file = ['Sample_3/900 ms/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/900 ms/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:25,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(26:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs900ms = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)));
%%================================================================================================
%% SRII spectra at start and finish of measurements.
for kk=1:30
if kk <= 9
file = ['Sample_3/SRII/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/SRII/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
SampleSRII = rmoutliers(abs(1:30,SpectrumStart:SpectrumEnd),'percentiles',[1 99]);
size(SampleSRII)
AbsSRII = mean(SampleSRII);
for kk=1:30
if kk <= 9
file = ['Sample_3/SRII B/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/SRII B/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
SampleSRII = rmoutliers(abs(1:30,SpectrumStart:SpectrumEnd),'percentiles',[1 99]);
size(SampleSRII)
AbsSRIIB = mean(SampleSRII);
%% 120 ms continuous data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/120 ms Continuous/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/120 ms Continuous/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs120msCont = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)))-0.005;
%% 150 ms continuous data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/150 ms Continuous/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/150 ms Continuous/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs150msCont = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)))-0.005;
%% 180 ms continuous data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/180 ms Continuous/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/180 ms Continuous/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs180msCont = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)))-0.005;
%% 240 ms continuous data second run
for kk=1:45
if kk <= 9
file = ['Sample_3/240 ms Continous/1906252U1_000' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
if kk >= 10
file = ['Sample_3/240 ms Continous/1906252U1_00' num2str(kk) '.Abs8.txt'];
import_data(kk) = importdata(file);
end
wavelength(kk,:) = import_data(kk).data(:,1);
sample(kk,:) = import_data(kk).data(:,2);
dark(kk,:) = import_data(kk).data(:,3);
reference(kk,:) = import_data(kk).data(:,4);
abs(kk,:) = import_data(kk).data(:,5);
end
ReferenceB = rmoutliers(sample(1:15,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
SampleB = rmoutliers(sample(16:45,SpectrumStart:SpectrumEnd),'percentiles',[3 99]);
Abs240msCont = -log10((mean(SampleB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd))./(mean(ReferenceB(:,:),1) - dark(1,SpectrumStart:SpectrumEnd)))-0.005;
ReferenceLate = mean(ReferenceB(:,:),1);
LossAbs240msCont = -log10((ReferenceLate - dark(1,SpectrumStart:SpectrumEnd))./(ReferenceEarly - dark(1,SpectrumStart:SpectrumEnd)))-0.005;
% size(ReferenceB)
% size(SampleB)
% figure('Position', [850 50 500 700])
% subplot(3,1,1)
% plot(wavelength(1,SpectrumStart:SpectrumEnd),ReferenceB,'linewidth',2)
% axis([280 700 0 60000]);
% subplot(3,1,2)
% plot(wavelength(1,SpectrumStart:SpectrumEnd),SampleB,'linewidth',2)
% axis([280 700 0 60000]);
% subplot(3,1,3)
% plot(wavelength(1,SpectrumStart:SpectrumEnd),Abs120msCont,'linewidth',2)
% hold on
% plot(wavelength(1,SpectrumStart:SpectrumEnd),Abs150msCont,'linewidth',2)
% plot(wavelength(1,SpectrumStart:SpectrumEnd),Abs180msCont,'linewidth',2)
% plot(wavelength(1,SpectrumStart:SpectrumEnd),Abs240msCont,'linewidth',2)
% axis([280 700 -0.3 0.2]);
%% Now decompose these data
AllData = [Abs7ms; Abs10ms; Abs15ms; Abs20ms; Abs30ms; Abs45ms; Abs60ms; Abs90ms; Abs120ms;...
Abs150ms; Abs200ms;Abs300ms;Abs400ms;Abs500ms;Abs600ms;Abs900ms];
DtAllData = [7 10 15 20 30 45 60 90 120 150 200 300 400 500 600 900];
[U2,S2,V2] = svd(AllData);
for i = 1:size(U2,1)
svdAllData(i,:) = mean(U2(:,i))*V2(:,i)*S2(i,i); % Gives basis spectra after SVD decomposition.
end
svdComps = svdAllData(1:2,:);
x0 = ones(1,2+3*size(svdComps,1)); x0(1:2) = [10^(-1) 10^(-4)];
fun = @(x)(LinearSumDiffs(x,AllData,svdComps,DtAllData));
x = fminsearch(fun,x0);
A1 = exp(-x(1)*DtAllData);
A2 = x(1)/(x(2)-x(1))*(exp(-x(1)*DtAllData) - (exp(-x(2)*DtAllData)));
% Make a linear time grid to sum components by time-window
t5 = [0:1:250];
A3 = exp(-x(1)*t5);
A4 = x(1)/(x(2)-x(1))*(exp(-x(1)*t5) - (exp(-x(2)*t5)));
% Now sum populations over the window
PM = [sum(A3(1:30))/30 sum(A3(31:60))/30 sum(A3(61:90))/30 sum(A3(91:120))/30 sum(A3(121:150))/30 sum(A3(151:180))/30 sum(A3(181:210))/30]
PO = [sum(A4(1:30))/30 sum(A4(31:60))/30 sum(A4(61:90))/30 sum(A4(91:120))/30 sum(A4(121:150))/30 sum(A4(151:180))/30 sum(A4(181:210))/30]
Comp1 = x(3:size(svdComps,1)+2)*svdComps;
Comp2 = x(size(svdComps,1)+3:2*size(svdComps,1)+2)*svdComps;
spectra2save = [wavelength(1,SpectrumStart:SpectrumEnd); Comp1; Comp2];
save('Spectral_Basis.mat','spectra2save');
% Print rate constants
k1 = 1/x(1)/1000;
k2 = 1/x(2)/1000;
for i =1:size(AllData,1)
fun = @(x)(sum((AllData(i,:) - x(1)*Comp1 - x(2)*Comp2).^2));
x0 = [A1(i) A2(i)];
temp4(i,:) = fminsearch(fun,x0);
end
fun = @(x)(sum((Abs120msCont - x(1)*Comp1 - x(2)*Comp2).^2));
x0 = [0.3 0.3];
temp5 = fminsearch(fun,x0);
%% =====================================================================================================================
figure('Position', [750 50 450 1000])
subplot(3,1,1)
plot(wavelength(1,SpectrumStart:SpectrumEnd),AllData,'linewidth',0.5,'color','k');
hold on; axis([300 700 -0.25 0.2]);
plot(wavelength(1,SpectrumStart:SpectrumEnd),Comp1,'linewidth',2.5,'color',[0.9290 0.6940 0.1250]);
plot(wavelength(1,SpectrumStart:SpectrumEnd),Comp2,'linewidth',2.5,'color',[0 0.4470 0.7410]);
axis([300 700 -0.3 0.2]);
xlabel('Wavelength (nm)')
ylabel('/DeltaAbsorption (OD)')
box on; set(gca,'linewidth',2); set(gca,'FontSize',14);
% [temp5(1)/(temp5(1)+temp5(2)) temp5(2)/(temp5(1)+temp5(2))];
subplot(3,1,2)
semilogx(DtAllData,A1,'linewidth',2,'color',[0.9290 0.6940 0.1250]);
hold on;
semilogx(DtAllData,A2,'linewidth',2,'color',[0 0.4470 0.7410]);
semilogx(DtAllData,temp4(:,1),'o','linewidth',1.5,'color',[0.9290 0.6940 0.1250]);
semilogx(DtAllData,temp4(:,2),'o','linewidth',1.5,'color',[0 0.4470 0.7410]);
semilogx(DtAllData,A1 + A2,'linewidth',1.5,'color','k');
axis([3.5 3250 0 1.2]);
xlabel('Time (ms)')
xticks([10 100 1000])
ylabel('Population')
box on; set(gca,'linewidth',2); set(gca,'FontSize',14);
[temp5(1)/(temp5(1)+temp5(2)) temp5(2)/(temp5(1)+temp5(2))];
% Draw Figure for Giorgia's paper. Use 240 ms Cont.
fun = @(x)(sum((Abs120msCont - x(1)*Comp1 - x(2)*Comp2).^2));
x0 = [0.3 0.3];
temp5 = fminsearch(fun,x0)
subplot(3,1,3)
plot(wavelength(1,SpectrumStart:SpectrumEnd),Abs120msCont,'linewidth',3,'color','k')
hold on
plot(wavelength(1,SpectrumStart:SpectrumEnd),temp5(1)*Comp1,'linewidth',2.5,'color',[0.9290 0.6940 0.1250])
plot(wavelength(1,SpectrumStart:SpectrumEnd),temp5(2)*Comp2,'linewidth',2.5,'color',[0 0.4470 0.7410])
plot(wavelength(1,SpectrumStart:SpectrumEnd),temp5(1)*Comp1 + temp5(2)*Comp2,'linewidth',1.5,'color',[0.6350 0.0780 0.1840])
axis([300 700 -0.3 0.2]);
xlabel('Wavelength (nm)')
ylabel('/DeltaAbsorption (OD)')
box on; set(gca,'linewidth',2); set(gca,'FontSize',14);
[temp5(1)/(temp5(1)+temp5(2)) temp5(2)/(temp5(1)+temp5(2))]
%% Write function to minimize
function SumFit = LinearSumDiffs(yi,yii,yiii,yiv)
k(1:2) = yi(1:2);
x = yi(3:size(yi,2));
Data = yii;
svdComps = yiii;
Dt = yiv;
Comp1 = x(1:size(svdComps,1))*svdComps;
Comp2 = x(size(svdComps,1)+1:2*size(svdComps,1))*svdComps;
A1 = exp(-k(1)*Dt);
A2 = k(1)/(k(2)-k(1))*(exp(-k(1)*Dt) - (exp(-k(2)*Dt)));
SumFit = sum(sum((transpose(A1)*Comp1 +transpose(A2)*Comp2 - Data).^2));
end