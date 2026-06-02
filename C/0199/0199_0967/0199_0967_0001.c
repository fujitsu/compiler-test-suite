#include <stdlib.h>
extern signed int v1 (unsigned int, signed short);
extern signed int (*v2) (unsigned int, signed short);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned int, unsigned short);
extern signed char (*v6) (unsigned int, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
unsigned int v9 (signed int, signed int, unsigned int);
unsigned int (*v10) (signed int, signed int, unsigned int) = v9;
extern unsigned int v11 (signed char, signed short, signed char);
extern unsigned int (*v12) (signed char, signed short, signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
signed char v17 (void);
signed char (*v18) (void) = v17;
extern unsigned int v19 (signed char, signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed char, signed int, unsigned char, unsigned char);
unsigned int v21 (signed short, unsigned char, unsigned int);
unsigned int (*v22) (signed short, unsigned char, unsigned int) = v21;
extern unsigned short v23 (signed short, signed int, unsigned char);
extern unsigned short (*v24) (signed short, signed int, unsigned char);
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
void v27 (signed short);
void (*v28) (signed short) = v27;
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v60 = 2;
signed int v59 = 0;
unsigned int v58 = 4U;

void v27 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
signed int v64 = -1;
unsigned short v63 = 1;
unsigned int v62 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v65, unsigned char v66, unsigned int v67)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 1;
unsigned int v69 = 5U;
unsigned int v68 = 7U;
trace++;
switch (trace)
{
case 3: 
return v68;
default: abort ();
}
}
}
}

signed char v17 (void)
{
{
for (;;) {
unsigned short v73 = 0;
signed int v72 = 3;
signed short v71 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v74, signed int v75, unsigned int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
signed char v79 = -3;
unsigned int v78 = 0U;
unsigned char v77 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
