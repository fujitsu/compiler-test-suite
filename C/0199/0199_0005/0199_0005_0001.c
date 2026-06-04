#include <stdlib.h>
extern void v3 (unsigned short, signed short);
extern void (*v4) (unsigned short, signed short);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed int v7 (signed int, signed int);
extern signed int (*v8) (signed int, signed int);
signed int v9 (unsigned char, unsigned char);
signed int (*v10) (unsigned char, unsigned char) = v9;
extern unsigned short v11 (signed short, unsigned short, unsigned char, unsigned char);
extern unsigned short (*v12) (signed short, unsigned short, unsigned char, unsigned char);
void v13 (signed char);
void (*v14) (signed char) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern void v17 (unsigned short);
extern void (*v18) (unsigned short);
signed int v19 (void);
signed int (*v20) (void) = v19;
unsigned char v21 (signed char);
unsigned char (*v22) (signed char) = v21;
extern unsigned int v23 (signed short);
extern unsigned int (*v24) (signed short);
extern unsigned char v25 (signed char, signed int, signed int, signed int);
extern unsigned char (*v26) (signed char, signed int, signed int, signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v45 = -2;
signed short v44 = -4;
unsigned char v43 = 6;

unsigned char v21 (signed char v46)
{
history[history_index++] = (int)v46;
{
for (;;) {
unsigned int v49 = 5U;
unsigned int v48 = 4U;
unsigned short v47 = 7;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v50;
v50 = v27 ();
history[history_index++] = (int)v50;
}
break;
case 4: 
return 2;
case 6: 
return 0;
case 8: 
{
unsigned char v51;
v51 = v27 ();
history[history_index++] = (int)v51;
}
break;
case 10: 
return 2;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
signed int v54 = 3;
unsigned char v53 = 0;
unsigned char v52 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed char v55)
{
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 2;
signed char v57 = -4;
signed short v56 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v59, unsigned char v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 5;
signed short v62 = 3;
signed char v61 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
signed int v66 = -1;
unsigned int v65 = 6U;
unsigned short v64 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
