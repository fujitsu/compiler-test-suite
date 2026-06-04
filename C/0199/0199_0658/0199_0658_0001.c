#include <stdlib.h>
extern unsigned int v1 (unsigned int, signed int);
extern unsigned int (*v2) (unsigned int, signed int);
unsigned short v3 (signed short, signed int, unsigned short, signed short);
unsigned short (*v4) (signed short, signed int, unsigned short, signed short) = v3;
extern unsigned short v5 (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short (*v6) (unsigned short, unsigned char, unsigned int, signed char);
signed char v7 (unsigned char);
signed char (*v8) (unsigned char) = v7;
extern signed int v9 (signed char);
extern signed int (*v10) (signed char);
extern signed int v11 (unsigned short);
extern signed int (*v12) (unsigned short);
extern signed int v15 (signed char, signed int, unsigned char);
extern signed int (*v16) (signed char, signed int, unsigned char);
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
signed char v19 (unsigned int, signed int);
signed char (*v20) (unsigned int, signed int) = v19;
extern signed int v21 (signed int, signed short, unsigned short, signed int);
extern signed int (*v22) (signed int, signed short, unsigned short, signed int);
extern unsigned char v23 (unsigned int, signed int, unsigned int);
extern unsigned char (*v24) (unsigned int, signed int, unsigned int);
extern void v25 (unsigned char);
extern void (*v26) (unsigned char);
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned short v29 (unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v48 = -4;
unsigned short v47 = 0;
unsigned char v46 = 0;

signed char v19 (unsigned int v49, signed int v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed int v53 = 1;
unsigned char v52 = 2;
signed char v51 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v54;
signed int v55;
unsigned int v56;
unsigned char v57;
v54 = 5U - v49;
v55 = v53 + v50;
v56 = v49 - v49;
v57 = v23 (v54, v55, v56);
history[history_index++] = (int)v57;
}
break;
case 4: 
return v51;
case 6: 
return 1;
default: abort ();
}
}
}
}

signed char v7 (unsigned char v58)
{
history[history_index++] = (int)v58;
{
for (;;) {
signed char v61 = -3;
signed short v60 = -3;
signed char v59 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed short v62, signed int v63, unsigned short v64, signed short v65)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
signed char v68 = -4;
signed short v67 = 1;
unsigned char v66 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
