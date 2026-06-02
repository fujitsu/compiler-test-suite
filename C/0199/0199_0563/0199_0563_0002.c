#include <stdlib.h>
unsigned short v1 (signed int, unsigned int, signed short, signed char);
unsigned short (*v2) (signed int, unsigned int, signed short, signed char) = v1;
extern signed char v3 (unsigned int, unsigned short);
extern signed char (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed short, unsigned char, signed short, signed short);
extern signed short (*v8) (signed short, unsigned char, signed short, signed short);
extern signed int v9 (signed char, signed char, unsigned int);
extern signed int (*v10) (signed char, signed char, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern void v13 (signed short);
extern void (*v14) (signed short);
extern signed char v15 (signed short, signed char);
extern signed char (*v16) (signed short, signed char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern void v19 (unsigned int, signed int, unsigned char);
extern void (*v20) (unsigned int, signed int, unsigned char);
extern unsigned short v21 (unsigned char);
extern unsigned short (*v22) (unsigned char);
extern signed char v23 (signed char, unsigned char, signed char);
extern signed char (*v24) (signed char, unsigned char, signed char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
unsigned char v27 (unsigned int);
unsigned char (*v28) (unsigned int) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v56 = 3;
unsigned int v55 = 5U;
unsigned int v54 = 6U;

unsigned char v27 (unsigned int v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
unsigned int v60 = 4U;
signed char v59 = -3;
signed int v58 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed int v61, unsigned int v62, signed short v63, signed char v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 4U;
signed int v66 = 1;
unsigned short v65 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v68;
signed int v69;
v68 = 5 + 4;
v69 = v25 (v68);
history[history_index++] = (int)v69;
}
break;
case 2: 
{
signed short v70;
signed char v71;
signed char v72;
v70 = 0 + v63;
v71 = v64 + v64;
v72 = v15 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 4: 
{
unsigned char v73;
v73 = v17 ();
history[history_index++] = (int)v73;
}
break;
case 6: 
{
signed short v74;
v74 = v63 - -3;
v13 (v74);
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
