#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed int, unsigned char);
extern unsigned int (*v2) (unsigned short, signed int, unsigned char);
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern signed char v9 (unsigned int, signed char, signed short, unsigned int);
extern signed char (*v10) (unsigned int, signed char, signed short, unsigned int);
extern signed int v11 (unsigned char, signed int, unsigned short, signed char);
extern signed int (*v12) (unsigned char, signed int, unsigned short, signed char);
extern signed int v13 (unsigned int, unsigned short, unsigned int);
extern signed int (*v14) (unsigned int, unsigned short, unsigned int);
extern void v15 (void);
extern void (*v16) (void);
extern signed char v17 (unsigned char, signed char);
extern signed char (*v18) (unsigned char, signed char);
extern signed int v19 (void);
extern signed int (*v20) (void);
signed int v21 (signed short, unsigned char);
signed int (*v22) (signed short, unsigned char) = v21;
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned char);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned char);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern signed int v29 (unsigned short, signed short, signed short, unsigned char);
extern signed int (*v30) (unsigned short, signed short, signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
signed char v32 = 3;
signed short v31 = -3;

unsigned short v27 (void)
{
{
for (;;) {
signed char v36 = -1;
unsigned int v35 = 3U;
unsigned short v34 = 7;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v37;
signed short v38;
signed short v39;
unsigned char v40;
signed int v41;
v37 = 0 + 4;
v38 = 2 - -1;
v39 = -4 + 0;
v40 = 3 - 7;
v41 = v29 (v37, v38, v39, v40);
history[history_index++] = (int)v41;
}
break;
case 4: 
return 6;
default: abort ();
}
}
}
}

signed int v21 (signed short v42, unsigned char v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed short v46 = 3;
unsigned char v45 = 3;
signed char v44 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned int v50 = 3U;
unsigned int v49 = 2U;
unsigned char v48 = 4;
trace++;
switch (trace)
{
case 9: 
{
signed int v51;
v51 = v19 ();
history[history_index++] = (int)v51;
}
break;
case 11: 
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
unsigned short v54;
signed int v55;
unsigned char v56;
unsigned int v57;
v54 = 2 + 5;
v55 = v33 - v33;
v56 = 0 + 1;
v57 = v1 (v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
