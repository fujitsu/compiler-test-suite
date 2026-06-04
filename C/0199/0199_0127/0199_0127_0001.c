#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
unsigned int v3 (signed short, signed char);
unsigned int (*v4) (signed short, signed char) = v3;
unsigned short v5 (signed char, unsigned short, unsigned char);
unsigned short (*v6) (signed char, unsigned short, unsigned char) = v5;
extern unsigned short v7 (unsigned char, unsigned char, signed char);
extern unsigned short (*v8) (unsigned char, unsigned char, signed char);
extern signed char v9 (unsigned char, unsigned char, unsigned short, signed char);
extern signed char (*v10) (unsigned char, unsigned char, unsigned short, signed char);
unsigned char v11 (signed int);
unsigned char (*v12) (signed int) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned short v17 (signed char, unsigned short);
extern unsigned short (*v18) (signed char, unsigned short);
extern unsigned char v19 (signed int, unsigned short);
extern unsigned char (*v20) (signed int, unsigned short);
void v21 (unsigned short, signed char);
void (*v22) (unsigned short, signed char) = v21;
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
signed int v29 (unsigned short, unsigned int);
signed int (*v30) (unsigned short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v40 = 0U;
signed char v39 = 3;
signed short v38 = 2;

signed int v29 (unsigned short v41, unsigned int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 2;
signed int v44 = -2;
unsigned char v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned short v46, signed char v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned short v50 = 3;
unsigned char v49 = 3;
unsigned short v48 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v51)
{
history[history_index++] = (int)v51;
{
for (;;) {
unsigned int v54 = 7U;
signed char v53 = 0;
unsigned int v52 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed char v55, unsigned short v56, unsigned char v57)
{
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
unsigned char v60 = 2;
unsigned int v59 = 4U;
unsigned short v58 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v61, signed char v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 3;
unsigned short v64 = 1;
signed char v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
