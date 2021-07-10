
function makeSong()

%%	Piano Simulation 

fs = 40000;

% eighth note as 0.5 sec
A = key(52,8,fs);  %do 
B = key(54,8,fs);  %re
C = key(56,8,fs);  %mi
D = key(57,8,fs);  %fa
E = key(59,8,fs);  %so
F = key(61,8,fs);  %la
G = key(63,8,fs);  %si

% quarter note as 1 sec
A_l4 = key(52,4,fs);  %do 
B_l4 = key(54,4,fs);  %re
C_l4 = key(56,4,fs);  %mi
D_l4 = key(57,4,fs);  %fa
E_l4 = key(59,4,fs);  %so
F_l4 = key(61,4,fs);  %la
G_l4 = key(63,4,fs);  %si

% quarter note as 2 sec
A_l2 = key(52,10,fs);  %do A
B_l2 = key(54,10,fs);  %re B
C_l2 = key(56,10,fs);  %mi C
D_l2 = key(57,10,fs);  %fa D
E_l2 = key(59,10,fs);  %so E
F_l2 = key(61,10,fs);  %la F
G_l2 = key(63,10,fs);  %si G


% Play a song  "Twinkle Twinkle" https://www.youtube.com/watch?v=p9tW3n6aO9Q

line1 = [ A A E E F F E_l4];
line2 = [ D D C C B B A_l4];
line3 = [ E E D D C C B_l4];

song = [line1 line2 line3];
% plot(song)
sound(song,fs,24); %(song,fs,,32);


%************************************************************************

function wave = key(p, n, fs)
    t = 0:1/fs:4/n;
    idx = 440*2^((p-49)/12);
    
%     method 1 - orginal
%     wave = (sin(2*pi*idx*t));

%     method 2 - exponential decreasing 
     tt = 4/n:-1/fs:0;
     wave = (sin(2*pi*idx*t)).*exp(tt);
     wave = wave./max(wave);
    
%     method 3 - triangle decreasing 
%    mid = (t(1)+t(end))/2;
%    tri = -(abs(t-mid)-mid);
%    tri = tri./max(tri);
%    wave = (sin(2*pi*idx*t)).*tri;
    