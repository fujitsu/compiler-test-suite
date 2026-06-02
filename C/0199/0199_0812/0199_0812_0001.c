#include <stdlib.h>
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed char v7 (unsigned int, signed char);
extern signed char (*v8) (unsigned int, signed char);
extern signed short v9 (unsigned short, signed int, unsigned int);
extern signed short (*v10) (unsigned short, signed int, unsigned int);
extern unsigned int v11 (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned int (*v12) (unsigned char, signed char, unsigned int, unsigned short);
void v13 (unsigned char, unsigned int, unsigned int, unsigned int);
void (*v14) (unsigned char, unsigned int, unsigned int, unsigned int) = v13;
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
unsigned int v17 (signed char);
unsigned int (*v18) (signed char) = v17;
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
extern signed char v21 (signed char);
extern signed char (*v22) (signed char);
extern unsigned char v23 (unsigned int, signed char, signed short, unsigned short);
extern unsigned char (*v24) (unsigned int, signed char, signed short, unsigned short);
unsigned short v25 (unsigned int, signed short, unsigned char);
unsigned short (*v26) (unsigned int, signed short, unsigned char) = v25;
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
static unsigned char v29 (void);
static unsigned char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v55 = 1;
signed int v54 = 3;
unsigned int v53 = 3U;

static unsigned char v29 (void)
{
{
for (;;) {
unsigned int v58 = 6U;
signed short v57 = -4;
signed char v56 = -2;
trace++;
switch (trace)
{
case 8: 
return 6;
case 10: 
return 4;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned int v59, signed short v60, unsigned char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
signed char v64 = 2;
signed char v63 = -3;
signed short v62 = -2;
trace++;
switch (trace)
{
case 7: 
{
unsigned char v65;
v65 = v29 ();
history[history_index++] = (int)v65;
}
break;
case 9: 
{
unsigned char v66;
v66 = v29 ();
history[history_index++] = (int)v66;
}
break;
case 11: 
return 1;
default: abort ();
}
}
}
}

unsigned int v17 (signed char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 0U;
signed int v69 = 3;
unsigned int v68 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v71, unsigned int v72, unsigned int v73, unsigned int v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = 0;
signed char v76 = -2;
signed char v75 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
