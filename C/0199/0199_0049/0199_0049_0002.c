#include <stdlib.h>
extern unsigned short v1 (signed char, unsigned char, signed short);
extern unsigned short (*v2) (signed char, unsigned char, signed short);
extern signed int v5 (signed short);
extern signed int (*v6) (signed short);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern signed char v9 (unsigned short, unsigned short, signed short);
extern signed char (*v10) (unsigned short, unsigned short, signed short);
extern unsigned int v11 (unsigned char);
extern unsigned int (*v12) (unsigned char);
unsigned short v13 (signed char);
unsigned short (*v14) (signed char) = v13;
unsigned short v15 (signed char, signed char);
unsigned short (*v16) (signed char, signed char) = v15;
extern signed char v17 (signed short, unsigned char, unsigned int);
extern signed char (*v18) (signed short, unsigned char, unsigned int);
void v21 (unsigned char, signed char, signed int, unsigned char);
void (*v22) (unsigned char, signed char, signed int, unsigned char) = v21;
extern signed int v25 (unsigned char, unsigned short, unsigned char, unsigned int);
extern signed int (*v26) (unsigned char, unsigned short, unsigned char, unsigned int);
extern unsigned char v27 (signed short, signed short);
extern unsigned char (*v28) (signed short, signed short);
extern signed short v29 (unsigned int, signed char, unsigned short, unsigned short);
extern signed short (*v30) (unsigned int, signed char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v59 = 2;
signed int v58 = 1;
unsigned char v57 = 4;

void v21 (unsigned char v60, signed char v61, signed int v62, unsigned char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned short v66 = 4;
unsigned int v65 = 5U;
signed short v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed char v67, signed char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned char v71 = 4;
signed char v70 = -1;
signed int v69 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed char v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
unsigned int v75 = 1U;
unsigned int v74 = 6U;
signed char v73 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed short v76;
unsigned char v77;
unsigned int v78;
signed char v79;
v76 = -1 - 1;
v77 = 6 - 2;
v78 = v74 + v75;
v79 = v17 (v76, v77, v78);
history[history_index++] = (int)v79;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}
