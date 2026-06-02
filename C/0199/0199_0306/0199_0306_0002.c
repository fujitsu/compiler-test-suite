#include <stdlib.h>
signed short v1 (signed int, signed int, unsigned char, signed char);
signed short (*v2) (signed int, signed int, unsigned char, signed char) = v1;
extern unsigned char v3 (signed char, unsigned char);
extern unsigned char (*v4) (signed char, unsigned char);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed short v7 (signed char, signed short);
extern signed short (*v8) (signed char, signed short);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern unsigned int v11 (unsigned int, signed int, signed char, signed char);
extern unsigned int (*v12) (unsigned int, signed int, signed char, signed char);
extern void v13 (unsigned int, signed short);
extern void (*v14) (unsigned int, signed short);
extern void v15 (unsigned char, signed int, signed char, unsigned short);
extern void (*v16) (unsigned char, signed int, signed char, unsigned short);
signed char v17 (signed char, signed char, unsigned int);
signed char (*v18) (signed char, signed char, unsigned int) = v17;
extern unsigned int v19 (unsigned short);
extern unsigned int (*v20) (unsigned short);
extern unsigned short v21 (unsigned int);
extern unsigned short (*v22) (unsigned int);
extern signed int v23 (unsigned int, signed short);
extern signed int (*v24) (unsigned int, signed short);
extern signed short v25 (unsigned char, unsigned short, signed int, unsigned int);
extern signed short (*v26) (unsigned char, unsigned short, signed int, unsigned int);
extern void v27 (unsigned char, signed short, signed char);
extern void (*v28) (unsigned char, signed short, signed char);
unsigned int v29 (void);
unsigned int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v57 = 1U;
unsigned int v56 = 5U;
unsigned short v55 = 0;

unsigned int v29 (void)
{
{
for (;;) {
unsigned char v60 = 1;
unsigned char v59 = 2;
unsigned char v58 = 3;
trace++;
switch (trace)
{
case 2: 
return 0U;
case 4: 
return 0U;
default: abort ();
}
}
}
}

signed char v17 (signed char v61, signed char v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 3;
signed short v65 = 1;
unsigned int v64 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed int v67, signed int v68, unsigned char v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 3;
signed char v72 = 3;
unsigned int v71 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v74;
signed short v75;
v74 = v71 - v71;
v75 = -3 + 0;
v13 (v74, v75);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}
