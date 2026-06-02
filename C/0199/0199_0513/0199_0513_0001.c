#include <stdlib.h>
extern unsigned char v1 (unsigned short);
extern unsigned char (*v2) (unsigned short);
extern void v3 (unsigned char, unsigned int, unsigned char, signed short);
extern void (*v4) (unsigned char, unsigned int, unsigned char, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned int v7 (unsigned char, signed int, signed int);
extern unsigned int (*v8) (unsigned char, signed int, signed int);
signed char v9 (signed char, unsigned short);
signed char (*v10) (signed char, unsigned short) = v9;
signed short v11 (unsigned int, unsigned int, signed char, signed char);
signed short (*v12) (unsigned int, unsigned int, signed char, signed char) = v11;
extern signed short v13 (unsigned short, unsigned short);
extern signed short (*v14) (unsigned short, unsigned short);
extern signed char v15 (unsigned short);
extern signed char (*v16) (unsigned short);
extern signed int v17 (unsigned int, signed char, signed char, signed int);
extern signed int (*v18) (unsigned int, signed char, signed char, signed int);
unsigned short v19 (signed char, signed short, unsigned short, unsigned short);
unsigned short (*v20) (signed char, signed short, unsigned short, unsigned short) = v19;
extern signed short v21 (unsigned char, signed int, unsigned int, signed int);
extern signed short (*v22) (unsigned char, signed int, unsigned int, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed int v25 (signed int, signed int, signed int);
extern signed int (*v26) (signed int, signed int, signed int);
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v43 = 4;
signed short v42 = 3;
unsigned int v41 = 7U;

unsigned short v19 (signed char v44, signed short v45, unsigned short v46, unsigned short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 7;
signed char v49 = -3;
signed char v48 = -2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v51;
signed int v52;
unsigned int v53;
signed int v54;
signed short v55;
v51 = 0 - 5;
v52 = -1 + 3;
v53 = 5U - 0U;
v54 = 1 + 3;
v55 = v21 (v51, v52, v53, v54);
history[history_index++] = (int)v55;
}
break;
case 3: 
{
unsigned char v56;
signed int v57;
unsigned int v58;
signed int v59;
signed short v60;
v56 = 1 + v50;
v57 = -2 - -4;
v58 = 7U - 4U;
v59 = -3 - -4;
v60 = v21 (v56, v57, v58, v59);
history[history_index++] = (int)v60;
}
break;
case 15: 
return 2;
default: abort ();
}
}
}
}

signed short v11 (unsigned int v61, unsigned int v62, signed char v63, signed char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = 1;
signed char v66 = -3;
signed short v65 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed char v68, unsigned short v69)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
{
for (;;) {
unsigned int v72 = 5U;
unsigned int v71 = 6U;
unsigned char v70 = 7;
trace++;
switch (trace)
{
case 9: 
return v68;
default: abort ();
}
}
}
}
