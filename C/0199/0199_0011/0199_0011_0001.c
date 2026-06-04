#include <stdlib.h>
signed int v1 (unsigned int, unsigned short, signed int, unsigned int);
signed int (*v2) (unsigned int, unsigned short, signed int, unsigned int) = v1;
extern signed int v3 (signed char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed short, signed int, unsigned short);
extern unsigned char (*v6) (signed short, signed short, signed int, unsigned short);
extern unsigned char v7 (signed char, signed short, signed int);
extern unsigned char (*v8) (signed char, signed short, signed int);
extern unsigned int v9 (signed char, signed int);
extern unsigned int (*v10) (signed char, signed int);
extern signed short v11 (signed short, signed char, signed char, unsigned int);
extern signed short (*v12) (signed short, signed char, signed char, unsigned int);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed int v15 (signed int, signed short, unsigned char);
extern signed int (*v16) (signed int, signed short, unsigned char);
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
extern unsigned short v19 (signed int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
unsigned int v23 (unsigned int, signed char, unsigned int, signed short);
unsigned int (*v24) (unsigned int, signed char, unsigned int, signed short) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
unsigned int v29 (unsigned int, signed char);
unsigned int (*v30) (unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = 1;
signed char v54 = 0;
signed short v53 = -2;

unsigned int v29 (unsigned int v56, signed char v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned short v60 = 0;
unsigned char v59 = 4;
signed int v58 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned int v61, signed char v62, unsigned int v63, signed short v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned char v67 = 3;
unsigned short v66 = 4;
signed short v65 = 0;
trace++;
switch (trace)
{
case 2: 
return v63;
case 4: 
return 7U;
default: abort ();
}
}
}
}

signed int v1 (unsigned int v68, unsigned short v69, signed int v70, unsigned int v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
signed short v74 = 0;
signed short v73 = -3;
signed char v72 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v75;
unsigned int v76;
unsigned short v77;
signed int v78;
v75 = v72 + 0;
v76 = v71 - 4U;
v77 = 0 - v69;
v78 = v3 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 14: 
return v70;
default: abort ();
}
}
}
}
