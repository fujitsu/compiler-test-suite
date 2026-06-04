#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int, unsigned int);
extern signed short (*v2) (unsigned int, unsigned int);
extern signed char v3 (signed int, unsigned char, unsigned short);
extern signed char (*v4) (signed int, unsigned char, unsigned short);
extern signed char v5 (unsigned short, signed short);
extern signed char (*v6) (unsigned short, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed int v9 (unsigned short, signed int);
extern signed int (*v10) (unsigned short, signed int);
extern signed short v11 (signed short);
extern signed short (*v12) (signed short);
extern unsigned char v13 (unsigned short, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (unsigned short, signed int, unsigned char, unsigned short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
void v19 (unsigned char, unsigned short, unsigned char);
void (*v20) (unsigned char, unsigned short, unsigned char) = v19;
extern unsigned int v21 (unsigned short);
extern unsigned int (*v22) (unsigned short);
extern void v23 (signed char, signed short, unsigned int, unsigned short);
extern void (*v24) (signed char, signed short, unsigned int, unsigned short);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
signed int v27 (signed int, signed short);
signed int (*v28) (signed int, signed short) = v27;
void v29 (signed int, unsigned short);
void (*v30) (signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
signed char v32 = 0;
signed int v31 = 2;

void v29 (signed int v34, unsigned short v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned char v38 = 0;
unsigned short v37 = 3;
signed short v36 = -2;
trace++;
switch (trace)
{
case 8: 
return;
default: abort ();
}
}
}
}

signed int v27 (signed int v39, signed short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed short v43 = -3;
unsigned short v42 = 4;
signed char v41 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (unsigned char v44, unsigned short v45, unsigned char v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 0;
unsigned char v48 = 0;
unsigned short v47 = 6;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v50;
unsigned int v51;
v50 = v45 + v47;
v51 = v21 (v50);
history[history_index++] = (int)v51;
}
break;
case 13: 
return;
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
unsigned int v54;
unsigned int v55;
signed short v56;
v54 = 4U - 4U;
v55 = 3U - 7U;
v56 = v1 (v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
