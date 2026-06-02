#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
extern signed char v5 (signed char, unsigned int, signed char);
extern signed char (*v6) (signed char, unsigned int, signed char);
extern signed short v7 (unsigned int, signed short, unsigned short);
extern signed short (*v8) (unsigned int, signed short, unsigned short);
signed int v9 (signed int, signed short, unsigned int);
signed int (*v10) (signed int, signed short, unsigned int) = v9;
signed char v11 (signed char, unsigned short, signed int, signed char);
signed char (*v12) (signed char, unsigned short, signed int, signed char) = v11;
extern unsigned char v13 (signed char, signed char, signed char, signed char);
extern unsigned char (*v14) (signed char, signed char, signed char, signed char);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed short v17 (unsigned short, signed char, unsigned int, unsigned int);
extern signed short (*v18) (unsigned short, signed char, unsigned int, unsigned int);
signed int v19 (signed short, unsigned int, signed char);
signed int (*v20) (signed short, unsigned int, signed char) = v19;
extern unsigned char v21 (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v22) (unsigned int, unsigned short, unsigned short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned int);
extern unsigned char (*v26) (unsigned int);
extern unsigned short v27 (signed short, unsigned int);
extern unsigned short (*v28) (signed short, unsigned int);
signed short v29 (signed int);
signed short (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
signed char v32 = 1;
signed int v31 = -2;

signed short v29 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 5;
signed short v36 = -2;
unsigned int v35 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v19 (signed short v38, unsigned int v39, signed char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 6;
signed char v42 = 1;
unsigned char v41 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed char v44, unsigned short v45, signed int v46, signed char v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 0U;
signed short v49 = -3;
unsigned short v48 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (signed int v51, signed short v52, unsigned int v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned char v56 = 4;
signed int v55 = 1;
unsigned short v54 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
