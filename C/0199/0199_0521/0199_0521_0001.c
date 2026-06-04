#include <stdlib.h>
unsigned char v1 (signed char, unsigned int, signed char);
unsigned char (*v2) (signed char, unsigned int, signed char) = v1;
extern void v3 (signed int);
extern void (*v4) (signed int);
extern signed short v5 (signed int, signed int, unsigned char, signed char);
extern signed short (*v6) (signed int, signed int, unsigned char, signed char);
extern unsigned short v7 (unsigned char, unsigned int);
extern unsigned short (*v8) (unsigned char, unsigned int);
extern signed char v9 (unsigned int, signed char);
extern signed char (*v10) (unsigned int, signed char);
extern signed int v11 (unsigned int, unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned int, unsigned char);
signed short v13 (signed int, unsigned char, signed short);
signed short (*v14) (signed int, unsigned char, signed short) = v13;
unsigned int v15 (unsigned short, signed char, signed char);
unsigned int (*v16) (unsigned short, signed char, signed char) = v15;
extern signed int v17 (unsigned char, unsigned short, unsigned short);
extern signed int (*v18) (unsigned char, unsigned short, unsigned short);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed char v21 (unsigned int, unsigned int, signed int);
extern signed char (*v22) (unsigned int, unsigned int, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (unsigned char, signed char);
extern unsigned short (*v26) (unsigned char, signed char);
extern signed short v27 (unsigned char, unsigned short, signed char);
extern signed short (*v28) (unsigned char, unsigned short, signed char);
extern unsigned int v29 (signed char, unsigned char, unsigned int);
extern unsigned int (*v30) (signed char, unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v42 = 1U;
signed char v41 = -4;
unsigned int v40 = 0U;

unsigned int v15 (unsigned short v43, signed char v44, signed char v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 1U;
unsigned int v47 = 0U;
signed int v46 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v49, unsigned char v50, signed short v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned char v54 = 1;
unsigned char v53 = 6;
signed int v52 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (signed char v55, unsigned int v56, signed char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = -4;
signed char v59 = 3;
signed char v58 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed int v61;
signed int v62;
unsigned char v63;
signed char v64;
signed short v65;
v61 = v60 + 1;
v62 = 2 + v60;
v63 = 4 + 1;
v64 = v57 + v58;
v65 = v5 (v61, v62, v63, v64);
history[history_index++] = (int)v65;
}
break;
case 3: 
{
signed int v66;
v66 = -3 + -2;
v3 (v66);
}
break;
case 13: 
return 1;
case 16: 
return 3;
default: abort ();
}
}
}
}
