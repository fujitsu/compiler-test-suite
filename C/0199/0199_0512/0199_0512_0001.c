#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (unsigned char, unsigned char, unsigned char);
extern signed short (*v4) (unsigned char, unsigned char, unsigned char);
extern signed char v5 (unsigned int, signed char, unsigned char);
extern signed char (*v6) (unsigned int, signed char, unsigned char);
extern unsigned int v7 (signed int);
extern unsigned int (*v8) (signed int);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed short, unsigned short);
extern signed int (*v12) (signed short, unsigned short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
signed int v15 (unsigned int);
signed int (*v16) (unsigned int) = v15;
extern unsigned int v17 (signed int, unsigned short, unsigned char);
extern unsigned int (*v18) (signed int, unsigned short, unsigned char);
extern signed char v19 (signed char, unsigned char);
extern signed char (*v20) (signed char, unsigned char);
void v23 (unsigned int);
void (*v24) (unsigned int) = v23;
extern void v25 (void);
extern void (*v26) (void);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
signed char v29 (unsigned short, signed short, signed int);
signed char (*v30) (unsigned short, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v56 = -3;
unsigned int v55 = 7U;
unsigned char v54 = 2;

signed char v29 (unsigned short v57, signed short v58, signed int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 6U;
signed short v61 = 0;
signed int v60 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (void)
{
{
for (;;) {
unsigned short v65 = 0;
signed int v64 = 1;
unsigned short v63 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v23 (unsigned int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -3;
signed int v68 = 3;
unsigned int v67 = 5U;
trace++;
switch (trace)
{
case 2: 
return;
case 10: 
return;
default: abort ();
}
}
}
}

signed int v15 (unsigned int v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = 3;
signed char v72 = 1;
unsigned char v71 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
