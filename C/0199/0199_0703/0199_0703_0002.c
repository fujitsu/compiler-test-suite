#include <stdlib.h>
extern unsigned char v1 (signed short, signed int);
extern unsigned char (*v2) (signed short, signed int);
extern signed short v3 (signed int, signed char, signed int, signed char);
extern signed short (*v4) (signed int, signed char, signed int, signed char);
extern signed char v5 (signed char, signed int, unsigned int, signed short);
extern signed char (*v6) (signed char, signed int, unsigned int, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned char, signed char, signed short);
extern unsigned int (*v10) (unsigned char, signed char, signed short);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern signed int v13 (unsigned char, signed short);
extern signed int (*v14) (unsigned char, signed short);
void v15 (signed char, unsigned char);
void (*v16) (signed char, unsigned char) = v15;
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned char v19 (unsigned int, signed int, signed int, signed char);
extern unsigned char (*v20) (unsigned int, signed int, signed int, signed char);
signed int v21 (unsigned int, signed char, unsigned char, unsigned short);
signed int (*v22) (unsigned int, signed char, unsigned char, unsigned short) = v21;
signed char v23 (unsigned char);
signed char (*v24) (unsigned char) = v23;
extern signed short v25 (unsigned short, signed short, signed short, unsigned int);
extern signed short (*v26) (unsigned short, signed short, signed short, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern signed short v29 (signed int, unsigned char, signed char, unsigned int);
extern signed short (*v30) (signed int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v67 = 1;
signed char v66 = -3;
unsigned short v65 = 3;

signed char v23 (unsigned char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = 2;
unsigned short v70 = 4;
signed short v69 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v72, signed char v73, unsigned char v74, unsigned short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed char v78 = -4;
signed int v77 = -4;
signed int v76 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed int v79;
signed char v80;
signed int v81;
signed char v82;
signed short v83;
v79 = 3 + v76;
v80 = v73 + -1;
v81 = v76 - v76;
v82 = -4 - v78;
v83 = v3 (v79, v80, v81, v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
signed int v84;
signed char v85;
signed int v86;
signed char v87;
signed short v88;
v84 = v77 - v76;
v85 = v73 + v78;
v86 = v77 - v76;
v87 = v78 + v78;
v88 = v3 (v84, v85, v86, v87);
history[history_index++] = (int)v88;
}
break;
case 9: 
{
signed int v89;
signed char v90;
signed int v91;
signed char v92;
signed short v93;
v89 = v76 - v77;
v90 = v73 + v73;
v91 = v77 - v77;
v92 = -4 - v78;
v93 = v3 (v89, v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 13: 
return -2;
case 15: 
return v76;
case 17: 
return v77;
default: abort ();
}
}
}
}

void v15 (signed char v94, unsigned char v95)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned char v98 = 0;
signed int v97 = -4;
unsigned char v96 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
