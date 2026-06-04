#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed int v3 (signed char, signed int, signed int);
extern signed int (*v4) (signed char, signed int, signed int);
void v5 (unsigned char, signed short, unsigned short, unsigned int);
void (*v6) (unsigned char, signed short, unsigned short, unsigned int) = v5;
extern unsigned short v7 (signed int, signed int, signed short);
extern unsigned short (*v8) (signed int, signed int, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed char v11 (unsigned short, unsigned int);
signed char (*v12) (unsigned short, unsigned int) = v11;
void v13 (signed short, signed char, signed short);
void (*v14) (signed short, signed char, signed short) = v13;
extern signed char v15 (unsigned char, signed int, unsigned char);
extern signed char (*v16) (unsigned char, signed int, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (unsigned char);
extern unsigned char (*v20) (unsigned char);
extern unsigned char v21 (unsigned int, signed char, signed short);
extern unsigned char (*v22) (unsigned int, signed char, signed short);
extern unsigned short v23 (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned short (*v24) (unsigned short, unsigned short, signed int, unsigned char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (unsigned short, signed char, signed int, unsigned short);
extern unsigned char (*v28) (unsigned short, signed char, signed int, unsigned short);
extern void v29 (unsigned char, signed int, unsigned short, signed int);
extern void (*v30) (unsigned char, signed int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v54 = 4;
unsigned int v53 = 2U;
signed int v52 = -3;

void v13 (signed short v55, signed char v56, signed short v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 5;
signed int v59 = 0;
unsigned char v58 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned short v61, unsigned int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 2U;
unsigned char v64 = 6;
signed short v63 = 0;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v66;
unsigned char v67;
v66 = v64 - 3;
v67 = v19 (v66);
history[history_index++] = (int)v67;
}
break;
case 11: 
return 1;
case 13: 
return -2;
default: abort ();
}
}
}
}

void v5 (unsigned char v68, signed short v69, unsigned short v70, unsigned int v71)
{
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
{
for (;;) {
unsigned char v74 = 0;
unsigned int v73 = 1U;
unsigned char v72 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
unsigned int v77 = 4U;
signed short v76 = 3;
unsigned char v75 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v78;
signed char v79;
signed short v80;
unsigned char v81;
v78 = 0U - 7U;
v79 = 3 - -4;
v80 = v76 - v76;
v81 = v21 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 2: 
{
signed char v82;
v82 = v9 ();
history[history_index++] = (int)v82;
}
break;
case 16: 
return 1;
default: abort ();
}
}
}
}
