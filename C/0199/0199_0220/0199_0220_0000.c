#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char, signed int);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern signed char v7 (signed char, signed int);
extern signed char (*v8) (signed char, signed int);
unsigned int v9 (unsigned short, signed short, unsigned int);
unsigned int (*v10) (unsigned short, signed short, unsigned int) = v9;
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int, unsigned char, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char, unsigned char);
extern signed short v19 (signed char, unsigned int, unsigned short, signed short);
extern signed short (*v20) (signed char, unsigned int, unsigned short, signed short);
extern signed int v21 (signed int, signed int, signed short);
extern signed int (*v22) (signed int, signed int, signed short);
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
extern signed short v25 (unsigned char, unsigned short, signed short, unsigned char);
extern signed short (*v26) (unsigned char, unsigned short, signed short, unsigned char);
unsigned int v27 (signed int, unsigned short, signed char, unsigned char);
unsigned int (*v28) (signed int, unsigned short, signed char, unsigned char) = v27;
void v29 (signed short, unsigned char);
void (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
signed int v32 = -2;
unsigned char v31 = 1;

void v29 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = -1;
signed char v37 = 1;
unsigned int v36 = 5U;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

unsigned int v27 (signed int v39, unsigned short v40, signed char v41, unsigned char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 3;
unsigned short v44 = 2;
signed int v43 = -4;
trace++;
switch (trace)
{
case 2: 
return 7U;
case 4: 
return 2U;
case 6: 
return 0U;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned short v46, signed short v47, unsigned int v48)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = 1;
unsigned short v50 = 2;
signed char v49 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
unsigned int v54 = 4U;
unsigned char v53 = 0;
unsigned short v52 = 3;
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
unsigned short v57;
signed short v58;
unsigned char v59;
signed int v60;
unsigned int v61;
v57 = 4 + 7;
v58 = v33 - v33;
v59 = v31 - v31;
v60 = -2 - 1;
v61 = v1 (v57, v58, v59, v60);
history[history_index++] = (int)v61;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
