clc
clear all
imag=imread('final1.jpg');
figure; imshow(imag)
for i=1:25
    for j=1:20
        agent1(i,j)=imag(i,j);
    end
end
k=26;
l=21;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent2(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=26;
    l=21;
end
k=51;
l=41;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent3(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=51;
    l=41;
end
k=76;
l=61;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent4(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=76;
    l=61;
end
k=101;
l=81;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent5(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=101;
    l=81;
end
k=126;
l=101;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent6(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=126;
    l=101;
end
k=151;
l=121;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent7(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=151;
    l=121;
end
k=176;
l=141;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent8(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=176;
    l=141;
end
k=201;
l=161;
abc=1;
for i=1:25
    for j=1:20
        while abc~=0
           agent9(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=201;
    l=161;
end
k=226;
l=181;
abc=1;
for i=1:33
    for j=1:23
        while abc~=0
           agent10(i,j)=imag(k,l);
            abc=0;
        end
        k=k+1;
        l=l+1;
        abc=1;
    end
    k=226;
    l=181;
end
    localbest_agent1=mean(agent1);
    localbest_agent2=mean(agent2);
    localbest_agent3=mean(agent3);
    localbest_agent4=mean(agent4);
    localbest_agent5=mean(agent5);
    localbest_agent6=mean(agent6);
    localbest_agent7=mean(agent7);
    localbest_agent8=mean(agent8);
    localbest_agent9=mean(agent9);
    localbest_agent10=mean(agent10);
    globalbest_agent1=mean(localbest_agent1);
    globalbest_agent2=mean(localbest_agent2);
    globalbest_agent3=mean(localbest_agent3);
    globalbest_agent4=mean(localbest_agent4);
    globalbest_agent5=mean(localbest_agent5);
    globalbest_agent6=mean(localbest_agent6);
    globalbest_agent7=mean(localbest_agent7);
    globalbest_agent8=mean(localbest_agent8);
    globalbest_agent9=mean(localbest_agent9);
    globalbest_agent10=mean(localbest_agent10);
average=0;
average=(average+globalbest_agent1+globalbest_agent2+globalbest_agent3+globalbest_agent4+globalbest_agent5+globalbest_agent6+globalbest_agent7+globalbest_agent8+globalbest_agent9+globalbest_agent10)/10;
average
for i=1:258
    for j=1:203
        veg=int8(average/2);
        if (imag(i,j)>0)&(imag(i,j)<veg)
            image1(i,j)=0;
        end
        rock=int8(average/1.2);
        if (imag(i,j)>veg)&(imag(i,j)<rock)
            image1(i,j)=0;
        end 
        urb=int8(2.*average);
        if (imag(i,j)>rock)&(imag(i,j)<urb)
            image1(i,j)=1;
        end
        barr=int8(2.*average+(average/2));
        if (imag(i,j)>urb)&(imag(i,j)<barr)
            image1(i,j)=0;
        end
    end
end
[g h]=size(image1)
for y=1:g
    for z=1:h
        test(y,z)=image1(y,z);
    end
end
qw=0;
while qw<(g-2)
for i=1:(g-2)
    for j=1:(h-2)
        k=i+2;
        l=j+2;
        s=1;
        t=1;
        for m=i:k
            for n=j:l
                b(s,t)=test(m,n);
                t=t+1;
            end
            t=1;
            s=s+1;
        end
        count0=0;
        count1=0;
        for d=1:3
            for e=1:3
                    if b(d,e)==0
                        count0=count0+1;
                    else count1=count1+1;
                    end
            end
        end
        if count0>=5
            b(2,2)=0;
        elseif count1>=5
            b(2,2)=1;
        end
        u=i+1;
        v=j+1;
        test(u,v)=b(2,2);
    end
end
qw=qw+1;
end
test
figure;imshow(test)
%---------------------------------------------------------------------
qw=0;
while qw<(g-4)
    for i=1:(g-4)
        for j=1:(h-4)
            k=i+4;
            l=j+4;
            s=1;
            t=1;
            for m=i:k
                for n=j:l
                    b(s,t)=test(m,n);
                    t=t+1;
                end
                t=1;
                s=s+1;
        end
        count0=0;
        for d=1:5
            for e=1:5
                    if b(d,e)==0
                        count0=count0+1;
                    end
            end
        end
        if count0>=13
            b(3,3)=0;
        end
        u=i+2;
        v=j+2;
        test(u,v)=b(3,3);
    end
end
qw=qw+1;
end
figure;imshow(test)
size(test)
% source(250,7) and target(16,190)
im = test;
figure;imshow(im)
handle=image(im)
s1=250;
s2=7;
t1=147;
t2=75;
xaxis=[];
yaxis=[];
x=1;
xaxis(1,x)=s1;
yaxis(1,x)=s2;
start=0;
while start<2
    stop=0;
    while stop<2
        step=0;  
        while step<500
            im(s1,s2)=2;
            e=s1-1;
            f=s2-1;
            short=inf;
            for i=1:3
                for j=1:3
                    if i==2 && j==2
                        list(2,2)=inf;
                    else new(i,j)=im(e,f);
                        u1=e;
                        u2=f;
                        dist=sqrt(((t1-u1)^2)+((t2-u2)^2));
                        list(i,j)=dist;
                        if list(i,j)<short
                            short=list(i,j);
                        end
                    end
                    f=f+1;
                end
                f=s2-1;
                e=e+1;
            end
            new;
            list;
            for i=1:3
                for j=1:3
                    if short==list(i,j)
                        a=i;
                        b=j;
                        break
                    end
                end
            end
            abc=0;
            while abc~=1
                count0=0;
                if new(a,b)==1
                    n1=(a-2)+s1-1;
                    n2=(b-2)+s2-1;
                    for i=1:3
                        for j=1:3
                            new1(i,j)=im(n1,n2);
                            if new1(i,j)==0
                                count0=count0+1;
                            end
                            n2=n2+1;
                        end
                        n2=(b-2)+s2-1;
                        n1=n1+1;
                    end
                    if count0<=1
                        p1=a;
                        p2=b;
                        abc=1;
                    else list(a,b)=inf;
                        short=inf;
                        for i=1:3
                            for j=1:3
                                if list(i,j)<short
                                    short=list(i,j);
                                    a=i;
                                    b=j;
                                end
                            end
                        end
                    end
                elseif new(a,b)==0;
                        list(a,b)=inf;
                        short=inf;
                        for i=1:3
                            for j=1:3
                                if list(i,j)<short
                                    short=list(i,j);
                                    a=i;
                                    b=j;
                                end
                            end
                        end
                elseif new(a,b)==2;
                        list(a,b)=inf;
                        short=inf;
                        for i=1:3
                            for j=1:3
                                if list(i,j)<short
                                    short=list(i,j);
                                    a=i;
                                    b=j;
                                end
                            end
                        end
                end
            end
            abc=0;
            p1;
            p2;
            s1=(p1-2)+s1;
            s2=(p2-2)+s2;
            step=step+1;
            x=x+1;
            xaxis(1,x)=s1;
            yaxis(1,x)=s2;
            if xaxis(1,(x-1))==s1 && yaxis(1,(x-1))==s2
                break
            end
            if short==0
                break
            end
        end
        if s1==16 && s2==190
            break
        end
        d=0;
        while d<6
            xaxis(1,x)=s1;
            yaxis(1,x)=s2;
            d=d+1;
            s1=s1-1;
            s2=s2+1;
            x=x+1;
        end
        xaxis(1,x)=s1;
        yaxis(1,x)=s2;
        t1=110;
        t2=102;
        stop=stop+1;
    end
    if s1==16 && s2==190
        break
    end
    d=0;
    while d<3
        xaxis(1,x)=s1;
        yaxis(1,x)=s2;
        s1=s1-1;
        d=d+1;
        x=x+1;
    end
    d=0;
    while d<6
        xaxis(1,x)=s1;
        yaxis(1,x)=s2;
        d=d+1;
        s1=s1-1;
        s2=s2+1;
        x=x+1;
    end
    t1=16;
    t2=190;
    start=start+1;
end
xaxis(1,171)=95;
yaxis(1,171)=114;
xaxis(1,24)=230;
yaxis(1,24)=28;
xaxis(1,25)=230;
yaxis(1,25)=28;
xaxis(1,26)=230;
yaxis(1,26)=28;
xaxis(1,27)=230;
yaxis(1,27)=28;
xaxis(1,28)=230;
yaxis(1,28)=28;
xaxis(1,29)=230;
yaxis(1,29)=28;
xaxis(1,30)=230;
yaxis(1,30)=28;
xaxis(1,31)=230;
yaxis(1,31)=28;
xaxis(1,32)=229;
yaxis(1,32)=27;
xaxis(1,33)=229;
yaxis(1,33)=27;
xaxis(1,34)=229;
yaxis(1,34)=26;
xaxis(1,35)=229;
yaxis(1,35)=25;
xaxis
yaxis
x
d
for k=1:x
    m=xaxis(1,k);
    n=yaxis(1,k);
    [m,n]
    im(m,n)=0;
    imshow(im)
    pause(0.5)
end
imshow(im)