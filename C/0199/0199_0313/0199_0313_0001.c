#include <stdlib.h>
extern signed int v3 (signed short, signed char, signed char, signed short);
extern signed int (*v4) (signed short, signed char, signed char, signed short);
extern void v5 (signed short);
extern void (*v6) (signed short);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern unsigned int v11 (unsigned int, unsigned char, signed char);
extern unsigned int (*v12) (unsigned int, unsigned char, signed char);
signed char v13 (void);
signed char (*v14) (void) = v13;
unsigned char v15 (signed int, unsigned char, signed short, unsigned char);
unsigned char (*v16) (signed int, unsigned char, signed short, unsigned char) = v15;
extern signed char v17 (signed int, unsigned char);
extern signed char (*v18) (signed int, unsigned char);
extern signed char v19 (signed char, signed char, signed char);
extern signed char (*v20) (signed char, signed char, signed char);
signed int v21 (signed short);
signed int (*v22) (signed short) = v21;
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern signed char v27 (signed short, unsigned short, unsigned char);
extern signed char (*v28) (signed short, unsigned short, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v62 = 2;
unsigned char v61 = 4;
signed int v60 = -4;

signed int v23 (signed char v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -4;
unsigned short v65 = 0;
signed int v64 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed short v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 1U;
signed char v69 = 2;
unsigned short v68 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v71, unsigned char v72, signed short v73, unsigned char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -1;
unsigned int v76 = 4U;
signed short v75 = -3;
trace++;
switch (trace)
{
case 5: 
{
unsigned char v78;
v78 = v29 ();
history[history_index++] = (int)v78;
}
break;
case 7: 
{
unsigned char v79;
v79 = v29 ();
history[history_index++] = (int)v79;
}
break;
case 9: 
{
unsigned char v80;
v80 = v29 ();
history[history_index++] = (int)v80;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
unsigned int v83 = 0U;
unsigned char v82 = 2;
signed char v81 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
