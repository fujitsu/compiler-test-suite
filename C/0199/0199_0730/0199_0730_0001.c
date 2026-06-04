#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
signed int v5 (signed short, signed char, signed char, signed short);
signed int (*v6) (signed short, signed char, signed char, signed short) = v5;
extern unsigned int v7 (unsigned int, signed short);
extern unsigned int (*v8) (unsigned int, signed short);
extern void v9 (unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned short);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
unsigned int v15 (unsigned int);
unsigned int (*v16) (unsigned int) = v15;
extern unsigned char v17 (unsigned char, signed int, signed char, signed char);
extern unsigned char (*v18) (unsigned char, signed int, signed char, signed char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern unsigned int v21 (unsigned char, signed int);
extern unsigned int (*v22) (unsigned char, signed int);
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
extern signed char v25 (unsigned int, signed char, signed char);
extern signed char (*v26) (unsigned int, signed char, signed char);
signed int v27 (void);
signed int (*v28) (void) = v27;
extern signed char v29 (unsigned int, signed short, unsigned char, signed short);
extern signed char (*v30) (unsigned int, signed short, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v51 = 2;
unsigned char v50 = 0;
unsigned int v49 = 3U;

signed int v27 (void)
{
{
for (;;) {
unsigned short v54 = 4;
signed short v53 = -1;
signed int v52 = -3;
trace++;
switch (trace)
{
case 6: 
return v52;
case 10: 
return v52;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = -3;
signed short v57 = 3;
signed char v56 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed short v59, signed char v60, signed char v61, signed short v62)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 7;
unsigned short v64 = 5;
unsigned short v63 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v68 = 4U;
signed int v67 = -3;
signed int v66 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v69;
signed char v70;
v69 = 2U - 1U;
v70 = v11 (v69);
history[history_index++] = (int)v70;
}
break;
case 8: 
{
unsigned int v71;
unsigned short v72;
v71 = 0U - v68;
v72 = 2 + 4;
v9 (v71, v72);
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
