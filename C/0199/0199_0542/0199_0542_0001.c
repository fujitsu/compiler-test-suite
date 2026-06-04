#include <stdlib.h>
extern signed short v3 (signed int, signed short, signed int);
extern signed short (*v4) (signed int, signed short, signed int);
extern signed short v5 (unsigned short, signed int, unsigned char);
extern signed short (*v6) (unsigned short, signed int, unsigned char);
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
signed short v9 (signed int);
signed short (*v10) (signed int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned int);
extern signed char v17 (unsigned char, signed int, signed short);
extern signed char (*v18) (unsigned char, signed int, signed short);
unsigned int v19 (signed int, unsigned int);
unsigned int (*v20) (signed int, unsigned int) = v19;
extern unsigned int v21 (unsigned int, unsigned char, signed short, signed short);
extern unsigned int (*v22) (unsigned int, unsigned char, signed short, signed short);
unsigned int v23 (void);
unsigned int (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed char, signed int, unsigned char);
extern unsigned char (*v28) (signed char, signed int, unsigned char);
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 3;
signed short v57 = -4;
unsigned short v56 = 0;

unsigned int v23 (void)
{
{
for (;;) {
unsigned int v61 = 7U;
signed short v60 = -4;
signed char v59 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (signed int v62, unsigned int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 2;
unsigned short v65 = 0;
signed char v64 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v67;
v67 = v25 ();
history[history_index++] = (int)v67;
}
break;
case 5: 
{
unsigned int v68;
v68 = v25 ();
history[history_index++] = (int)v68;
}
break;
case 7: 
{
signed char v69;
signed int v70;
unsigned char v71;
unsigned char v72;
v69 = v66 - -3;
v70 = 2 - v62;
v71 = 1 + 1;
v72 = v27 (v69, v70, v71);
history[history_index++] = (int)v72;
}
break;
case 9: 
{
signed char v73;
signed int v74;
unsigned char v75;
unsigned char v76;
v73 = 2 - v66;
v74 = v62 + 3;
v75 = 4 - 4;
v76 = v27 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed short v9 (signed int v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed char v80 = 0;
unsigned int v79 = 4U;
unsigned int v78 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
