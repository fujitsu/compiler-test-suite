#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned char v3 (signed short, signed short);
extern unsigned char (*v4) (signed short, signed short);
unsigned int v5 (signed int, unsigned int);
unsigned int (*v6) (signed int, unsigned int) = v5;
unsigned char v7 (unsigned short, signed int, unsigned short);
unsigned char (*v8) (unsigned short, signed int, unsigned short) = v7;
extern unsigned int v9 (signed short, signed char, unsigned int);
extern unsigned int (*v10) (signed short, signed char, unsigned int);
unsigned char v11 (signed char, unsigned int);
unsigned char (*v12) (signed char, unsigned int) = v11;
extern signed char v13 (signed int, signed char, unsigned int, signed short);
extern signed char (*v14) (signed int, signed char, unsigned int, signed short);
extern signed char v15 (unsigned int, unsigned short, unsigned short, signed int);
extern signed char (*v16) (unsigned int, unsigned short, unsigned short, signed int);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern unsigned char v19 (signed short, unsigned char, unsigned short);
extern unsigned char (*v20) (signed short, unsigned char, unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed short v25 (unsigned char, unsigned char, signed int);
signed short (*v26) (unsigned char, unsigned char, signed int) = v25;
extern signed short v27 (signed short);
extern signed short (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, unsigned short);
extern unsigned char (*v30) (unsigned short, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
signed short v32 = 0;
signed char v31 = -4;

signed short v25 (unsigned char v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 3U;
signed short v38 = 2;
signed int v37 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed char v40, unsigned int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 6;
unsigned short v43 = 0;
unsigned char v42 = 2;
trace++;
switch (trace)
{
case 3: 
return 5;
case 10: 
return v42;
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v45, signed int v46, unsigned short v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -3;
unsigned short v49 = 6;
signed short v48 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed int v51, unsigned int v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = 3;
unsigned int v54 = 7U;
unsigned short v53 = 3;
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
unsigned int v58;
signed short v59;
v58 = 3U - 3U;
v59 = v1 (v58);
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
