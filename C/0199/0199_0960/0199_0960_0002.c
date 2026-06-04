#include <stdlib.h>
extern void v1 (signed int, signed char);
extern void (*v2) (signed int, signed char);
extern void v3 (void);
extern void (*v4) (void);
void v5 (unsigned int);
void (*v6) (unsigned int) = v5;
extern unsigned short v7 (void);
extern unsigned short (*v8) (void);
extern void v9 (void);
extern void (*v10) (void);
unsigned int v11 (signed short);
unsigned int (*v12) (signed short) = v11;
extern unsigned short v13 (unsigned short);
extern unsigned short (*v14) (unsigned short);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern signed int v19 (unsigned int, unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int, unsigned int);
extern signed short v21 (signed char, signed char, unsigned int, unsigned int);
extern signed short (*v22) (signed char, signed char, unsigned int, unsigned int);
extern void v23 (signed short);
extern void (*v24) (signed short);
unsigned int v25 (signed int, signed char, unsigned short, unsigned short);
unsigned int (*v26) (signed int, signed char, unsigned short, unsigned short) = v25;
extern signed int v27 (signed short);
extern signed int (*v28) (signed short);
extern signed int v29 (signed int, unsigned char, unsigned short, unsigned int);
extern signed int (*v30) (signed int, unsigned char, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v57 = 3;
signed char v56 = -3;
unsigned int v55 = 1U;

unsigned int v25 (signed int v58, signed char v59, unsigned short v60, unsigned short v61)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned int v64 = 0U;
signed short v63 = -1;
unsigned int v62 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
signed char v67 = -3;
unsigned char v66 = 0;
unsigned short v65 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed char v68;
v68 = v17 ();
history[history_index++] = (int)v68;
}
break;
case 6: 
{
signed char v69;
v69 = v17 ();
history[history_index++] = (int)v69;
}
break;
case 7: 
{
signed char v70;
v70 = v17 ();
history[history_index++] = (int)v70;
}
break;
case 8: 
return -2;
case 9: 
return -4;
case 10: 
{
signed char v71;
v71 = v17 ();
history[history_index++] = (int)v71;
}
break;
case 11: 
return 3;
case 12: 
return v67;
case 13: 
return v67;
default: abort ();
}
}
}
}

unsigned int v11 (signed short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 0;
signed int v74 = -3;
signed short v73 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (unsigned int v76)
{
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 2;
signed int v78 = -1;
signed char v77 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
