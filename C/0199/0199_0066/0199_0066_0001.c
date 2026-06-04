#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
signed int v3 (void);
signed int (*v4) (void) = v3;
signed char v5 (unsigned int, unsigned char, unsigned int, unsigned char);
signed char (*v6) (unsigned int, unsigned char, unsigned int, unsigned char) = v5;
extern signed short v7 (unsigned short, signed char, unsigned short);
extern signed short (*v8) (unsigned short, signed char, unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern void v11 (void);
extern void (*v12) (void);
void v13 (signed char, signed char);
void (*v14) (signed char, signed char) = v13;
extern signed char v15 (unsigned short, signed int, unsigned char);
extern signed char (*v16) (unsigned short, signed int, unsigned char);
extern unsigned char v17 (unsigned int, signed short, signed char, unsigned int);
extern unsigned char (*v18) (unsigned int, signed short, signed char, unsigned int);
extern signed int v19 (unsigned int, unsigned int, signed int);
extern signed int (*v20) (unsigned int, unsigned int, signed int);
unsigned int v23 (signed short, signed int, signed short);
unsigned int (*v24) (signed short, signed int, signed short) = v23;
extern unsigned short v25 (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short (*v26) (unsigned int, unsigned short, unsigned int, signed char);
extern unsigned short v27 (unsigned char, unsigned short, unsigned int, signed short);
extern unsigned short (*v28) (unsigned char, unsigned short, unsigned int, signed short);
extern void v29 (signed short, unsigned short);
extern void (*v30) (signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = 2;
unsigned int v58 = 2U;
unsigned short v57 = 2;

unsigned int v23 (signed short v60, signed int v61, signed short v62)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = -2;
unsigned char v64 = 0;
signed char v63 = -1;
trace++;
switch (trace)
{
case 3: 
return 5U;
case 5: 
return 4U;
default: abort ();
}
}
}
}

void v13 (signed char v66, signed char v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned char v70 = 2;
unsigned char v69 = 3;
signed char v68 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v71, unsigned char v72, unsigned int v73, unsigned char v74)
{
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed int v77 = 1;
unsigned char v76 = 3;
unsigned char v75 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (void)
{
{
for (;;) {
unsigned short v80 = 2;
signed char v79 = 2;
signed int v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
