#include <stdlib.h>
extern unsigned char v1 (unsigned int, unsigned short);
extern unsigned char (*v2) (unsigned int, unsigned short);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (signed short, signed int);
extern unsigned int (*v6) (signed short, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
void v9 (void);
void (*v10) (void) = v9;
signed int v11 (signed char, unsigned char, unsigned char);
signed int (*v12) (signed char, unsigned char, unsigned char) = v11;
extern unsigned int v13 (unsigned char, signed short, unsigned int);
extern unsigned int (*v14) (unsigned char, signed short, unsigned int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern signed int v17 (signed short, unsigned char, signed char);
extern signed int (*v18) (signed short, unsigned char, signed char);
extern signed short v19 (signed short, unsigned char);
extern signed short (*v20) (signed short, unsigned char);
signed char v23 (unsigned int, unsigned char);
signed char (*v24) (unsigned int, unsigned char) = v23;
signed char v25 (signed int, unsigned int);
signed char (*v26) (signed int, unsigned int) = v25;
extern signed char v27 (signed short, signed char, unsigned char);
extern signed char (*v28) (signed short, signed char, unsigned char);
extern signed short v29 (unsigned int, unsigned short);
extern signed short (*v30) (unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v48 = 0;
signed short v47 = -4;
signed char v46 = -3;

signed char v25 (signed int v49, unsigned int v50)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
{
for (;;) {
signed short v53 = 0;
signed short v52 = 3;
signed char v51 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (unsigned int v54, unsigned char v55)
{
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
signed char v58 = 0;
signed char v57 = -4;
signed int v56 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed char v59, unsigned char v60, unsigned char v61)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
{
for (;;) {
unsigned char v64 = 7;
signed short v63 = 2;
signed int v62 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (void)
{
{
for (;;) {
unsigned int v67 = 4U;
unsigned int v66 = 6U;
signed char v65 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
