#include <stdlib.h>
extern unsigned short v1 (unsigned int, signed int, signed int, unsigned char);
extern unsigned short (*v2) (unsigned int, signed int, signed int, unsigned char);
extern unsigned char v3 (signed short, unsigned int, signed char);
extern unsigned char (*v4) (signed short, unsigned int, signed char);
extern signed int v5 (signed short, unsigned short, unsigned int);
extern signed int (*v6) (signed short, unsigned short, unsigned int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned int v17 (unsigned short, signed char);
unsigned int (*v18) (unsigned short, signed char) = v17;
unsigned short v19 (unsigned char, signed int);
unsigned short (*v20) (unsigned char, signed int) = v19;
extern unsigned short v23 (signed short);
extern unsigned short (*v24) (signed short);
extern void v25 (signed short);
extern void (*v26) (signed short);
extern unsigned short v27 (unsigned int, signed char, signed int);
extern unsigned short (*v28) (unsigned int, signed char, signed int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v61 = 5U;
signed char v60 = -3;
unsigned short v59 = 5;

unsigned short v19 (unsigned char v62, signed int v63)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = 2;
unsigned char v65 = 4;
unsigned int v64 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v67, signed char v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 2;
unsigned char v70 = 5;
signed char v69 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed short v72;
unsigned short v73;
v72 = 1 + -3;
v73 = v23 (v72);
history[history_index++] = (int)v73;
}
break;
case 4: 
{
signed short v74;
unsigned short v75;
v74 = -4 + -2;
v75 = v23 (v74);
history[history_index++] = (int)v75;
}
break;
case 6: 
return 2U;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned short v78 = 7;
signed short v77 = -1;
signed int v76 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
