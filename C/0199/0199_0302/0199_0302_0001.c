#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern unsigned int v5 (unsigned short, signed int, signed short);
extern unsigned int (*v6) (unsigned short, signed int, signed short);
extern unsigned int v7 (unsigned char, signed int, signed char);
extern unsigned int (*v8) (unsigned char, signed int, signed char);
void v9 (signed int, signed char, signed char, unsigned char);
void (*v10) (signed int, signed char, signed char, unsigned char) = v9;
extern unsigned char v11 (signed char, signed int, unsigned int);
extern unsigned char (*v12) (signed char, signed int, unsigned int);
extern void v13 (signed char);
extern void (*v14) (signed char);
extern signed short v15 (signed short, signed short, signed int);
extern signed short (*v16) (signed short, signed short, signed int);
signed int v17 (unsigned int);
signed int (*v18) (unsigned int) = v17;
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern signed char v21 (unsigned short, signed char);
extern signed char (*v22) (unsigned short, signed char);
extern unsigned char v23 (unsigned short);
extern unsigned char (*v24) (unsigned short);
extern void v25 (void);
extern void (*v26) (void);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
unsigned int v29 (signed char, unsigned char);
unsigned int (*v30) (signed char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v50 = 4;
unsigned int v49 = 1U;
signed char v48 = 3;

unsigned int v29 (signed char v51, unsigned char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed short v55 = -4;
signed int v54 = 3;
signed short v53 = -3;
trace++;
switch (trace)
{
case 2: 
return 6U;
case 6: 
return 2U;
case 11: 
return 3U;
default: abort ();
}
}
}
}

signed int v17 (unsigned int v56)
{
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = -1;
signed short v58 = -2;
unsigned int v57 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v60, signed char v61, signed char v62, unsigned char v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed char v66 = -1;
unsigned char v65 = 6;
signed short v64 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 2;
unsigned int v69 = 5U;
signed short v68 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
