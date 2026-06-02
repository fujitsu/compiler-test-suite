#include <stdlib.h>
extern unsigned short v1 (signed int, unsigned int, signed short, unsigned int);
extern unsigned short (*v2) (signed int, unsigned int, signed short, unsigned int);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern unsigned char v7 (unsigned short, unsigned char);
extern unsigned char (*v8) (unsigned short, unsigned char);
extern unsigned short v9 (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned short (*v10) (unsigned short, signed char, unsigned short, unsigned char);
extern unsigned int v11 (signed int, signed int, unsigned short);
extern unsigned int (*v12) (signed int, signed int, unsigned short);
extern signed short v13 (signed short, unsigned short, signed char);
extern signed short (*v14) (signed short, unsigned short, signed char);
signed short v15 (unsigned int, signed short, signed char, signed char);
signed short (*v16) (unsigned int, signed short, signed char, signed char) = v15;
extern void v17 (signed int, signed char, signed short, signed int);
extern void (*v18) (signed int, signed char, signed short, signed int);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (unsigned char, unsigned char, unsigned char);
extern void (*v22) (unsigned char, unsigned char, unsigned char);
extern signed char v23 (unsigned char, unsigned char, signed char, signed int);
extern signed char (*v24) (unsigned char, unsigned char, signed char, signed int);
signed short v25 (unsigned short, unsigned int, unsigned int, signed char);
signed short (*v26) (unsigned short, unsigned int, unsigned int, signed char) = v25;
extern void v27 (unsigned int, unsigned short);
extern void (*v28) (unsigned int, unsigned short);
unsigned int v29 (signed int, unsigned int, unsigned int, signed int);
unsigned int (*v30) (signed int, unsigned int, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v56 = 7;
signed short v55 = -2;
signed char v54 = -4;

unsigned int v29 (signed int v57, unsigned int v58, unsigned int v59, signed int v60)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 2;
unsigned char v62 = 1;
signed int v61 = 0;
trace++;
switch (trace)
{
case 3: 
return 3U;
case 5: 
return 7U;
case 9: 
return v58;
case 11: 
return 7U;
default: abort ();
}
}
}
}

signed short v25 (unsigned short v64, unsigned int v65, unsigned int v66, signed char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 3;
signed int v69 = -3;
signed short v68 = 1;
trace++;
switch (trace)
{
case 7: 
return 0;
default: abort ();
}
}
}
}

signed short v15 (unsigned int v71, signed short v72, signed char v73, signed char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
unsigned char v77 = 0;
signed int v76 = -1;
signed short v75 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (void)
{
{
for (;;) {
unsigned short v80 = 1;
signed int v79 = -2;
signed int v78 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
